
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbioc_t2rq {int ioc_setupcnt; int ioc_rparamcnt; int ioc_rdatacnt; int ioc_rdata; int ioc_rparam; int ioc_tdata; int ioc_tdatacnt; int ioc_tparam; int ioc_tparamcnt; scalar_t__ ioc_name; int * ioc_setup; } ;
struct mdchain {scalar_t__ md_top; } ;
struct smb_t2rq {int t2_setupcount; int t2_maxpcount; int t2_maxdcount; int * t_name; struct mdchain t2_rdata; struct mdchain t2_rparam; int t2_tdata; int t2_tparam; scalar_t__ t2_maxscount; int * t2_setupdata; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int MB_MUSER ;
 int M_SMBTEMP ;
 int M_WAITOK ;
 int SSTOCP (struct smb_share*) ;
 int free (struct smb_t2rq*,int ) ;
 int m_fixhdr (scalar_t__) ;
 struct smb_t2rq* malloc (int,int ,int ) ;
 int md_get_mem (struct mdchain*,int ,int,int ) ;
 int smb_cpdatain (int *,int ,int ) ;
 int * smb_strdupin (scalar_t__,int) ;
 int smb_strfree (int *) ;
 int smb_t2_done (struct smb_t2rq*) ;
 int smb_t2_init (struct smb_t2rq*,int ,int ,struct smb_cred*) ;
 int smb_t2_request (struct smb_t2rq*) ;

int
smb_usr_t2request(struct smb_share *ssp, struct smbioc_t2rq *dp,
 struct smb_cred *scred)
{
 struct smb_t2rq *t2p;
 struct mdchain *mdp;
 int error, len;

 if (dp->ioc_setupcnt > 3)
  return EINVAL;
 t2p = malloc(sizeof(struct smb_t2rq), M_SMBTEMP, M_WAITOK);
 error = smb_t2_init(t2p, SSTOCP(ssp), dp->ioc_setup[0], scred);
 if (error) {
  free(t2p, M_SMBTEMP);
  return error;
 }
 len = t2p->t2_setupcount = dp->ioc_setupcnt;
 if (len > 1)
  t2p->t2_setupdata = dp->ioc_setup;
 if (dp->ioc_name) {
  t2p->t_name = smb_strdupin(dp->ioc_name, 128);
  if (t2p->t_name == ((void*)0)) {
   error = ENOMEM;
   goto bad;
  }
 }
 t2p->t2_maxscount = 0;
 t2p->t2_maxpcount = dp->ioc_rparamcnt;
 t2p->t2_maxdcount = dp->ioc_rdatacnt;
 error = smb_cpdatain(&t2p->t2_tparam, dp->ioc_tparamcnt, dp->ioc_tparam);
 if (error)
  goto bad;
 error = smb_cpdatain(&t2p->t2_tdata, dp->ioc_tdatacnt, dp->ioc_tdata);
 if (error)
  goto bad;
 error = smb_t2_request(t2p);
 if (error)
  goto bad;
 mdp = &t2p->t2_rparam;
 if (mdp->md_top) {
  len = m_fixhdr(mdp->md_top);
  if (len > dp->ioc_rparamcnt) {
   error = EMSGSIZE;
   goto bad;
  }
  dp->ioc_rparamcnt = len;
  error = md_get_mem(mdp, dp->ioc_rparam, len, MB_MUSER);
  if (error)
   goto bad;
 } else
  dp->ioc_rparamcnt = 0;
 mdp = &t2p->t2_rdata;
 if (mdp->md_top) {
  len = m_fixhdr(mdp->md_top);
  if (len > dp->ioc_rdatacnt) {
   error = EMSGSIZE;
   goto bad;
  }
  dp->ioc_rdatacnt = len;
  error = md_get_mem(mdp, dp->ioc_rdata, len, MB_MUSER);
 } else
  dp->ioc_rdatacnt = 0;
bad:
 if (t2p->t_name)
  smb_strfree(t2p->t_name);
 smb_t2_done(t2p);
 free(t2p, M_SMBTEMP);
 return error;
}
