
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct nfssessionhash {int dummy; } ;
struct nfsrv_descript {TYPE_3__* nd_xprt; } ;
struct TYPE_7__ {TYPE_3__* nfsess_xprt; } ;
struct nfsdsession {int sess_crflags; TYPE_2__ sess_cbsess; int sess_cbprogram; struct nfsclient* sess_clp; } ;
struct TYPE_6__ {struct __rpc_client* nr_client; } ;
struct nfsclient {int lc_flags; TYPE_1__ lc_req; } ;
struct __rpc_client {int cl_private; } ;
struct TYPE_8__ {scalar_t__ xp_idletimeout; int xp_p2; int xp_socket; } ;
typedef TYPE_3__ SVCXPRT ;


 int LCL_DONEBINDCONN ;
 int NFSCDFC4_BACK ;
 int NFSCDFC4_BACK_OR_BOTH ;
 int NFSCDFC4_FORE_OR_BOTH ;
 int NFSCDFS4_BACK ;
 int NFSCDFS4_BOTH ;
 int NFSCDFS4_FORE ;
 int NFSD_DEBUG (int,char*) ;
 int NFSERR_BADSESSION ;
 int NFSERR_NOTSUPP ;
 int NFSLOCKSESSION (struct nfssessionhash*) ;
 int NFSLOCKSTATE () ;
 struct nfssessionhash* NFSSESSIONHASH (int *) ;
 int NFSUNLOCKSESSION (struct nfssessionhash*) ;
 int NFSUNLOCKSTATE () ;
 int NFSV4CRSESS_CONNBACKCHAN ;
 int NFSV4_CBVERS ;
 int SVC_ACQUIRE (TYPE_3__*) ;
 int SVC_RELEASE (TYPE_3__*) ;
 scalar_t__ clnt_bck_create (int ,int ,int ) ;
 struct nfsdsession* nfsrv_findsession (int *) ;
 int printf (char*) ;

int
nfsrv_bindconnsess(struct nfsrv_descript *nd, uint8_t *sessionid, int *foreaftp)
{
 struct nfssessionhash *shp;
 struct nfsdsession *sep;
 struct nfsclient *clp;
 SVCXPRT *savxprt;
 int error;

 error = 0;
 shp = NFSSESSIONHASH(sessionid);
 NFSLOCKSTATE();
 NFSLOCKSESSION(shp);
 sep = nfsrv_findsession(sessionid);
 if (sep != ((void*)0)) {
  clp = sep->sess_clp;
  if (*foreaftp == NFSCDFC4_BACK ||
      *foreaftp == NFSCDFC4_BACK_OR_BOTH ||
      *foreaftp == NFSCDFC4_FORE_OR_BOTH) {

   if (clp->lc_req.nr_client == ((void*)0)) {
    NFSD_DEBUG(2, "nfsrv_bindconnsess: acquire "
        "backchannel\n");
    clp->lc_req.nr_client = (struct __rpc_client *)
        clnt_bck_create(nd->nd_xprt->xp_socket,
        sep->sess_cbprogram, NFSV4_CBVERS);
   }
   if (clp->lc_req.nr_client != ((void*)0)) {
    NFSD_DEBUG(2, "nfsrv_bindconnsess: set up "
        "backchannel\n");
    savxprt = sep->sess_cbsess.nfsess_xprt;
    SVC_ACQUIRE(nd->nd_xprt);
    nd->nd_xprt->xp_p2 =
        clp->lc_req.nr_client->cl_private;

    nd->nd_xprt->xp_idletimeout = 0;
    sep->sess_cbsess.nfsess_xprt = nd->nd_xprt;
    if (savxprt != ((void*)0))
     SVC_RELEASE(savxprt);
    sep->sess_crflags |= NFSV4CRSESS_CONNBACKCHAN;
    clp->lc_flags |= LCL_DONEBINDCONN;
    if (*foreaftp == NFSCDFS4_BACK)
     *foreaftp = NFSCDFS4_BACK;
    else
     *foreaftp = NFSCDFS4_BOTH;
   } else if (*foreaftp != NFSCDFC4_BACK) {
    NFSD_DEBUG(2, "nfsrv_bindconnsess: can't set "
        "up backchannel\n");
    sep->sess_crflags &= ~NFSV4CRSESS_CONNBACKCHAN;
    clp->lc_flags |= LCL_DONEBINDCONN;
    *foreaftp = NFSCDFS4_FORE;
   } else {
    error = NFSERR_NOTSUPP;
    printf("nfsrv_bindconnsess: Can't add "
        "backchannel\n");
   }
  } else {
   NFSD_DEBUG(2, "nfsrv_bindconnsess: Set forechannel\n");
   clp->lc_flags |= LCL_DONEBINDCONN;
   *foreaftp = NFSCDFS4_FORE;
  }
 } else
  error = NFSERR_BADSESSION;
 NFSUNLOCKSESSION(shp);
 NFSUNLOCKSTATE();
 return (error);
}
