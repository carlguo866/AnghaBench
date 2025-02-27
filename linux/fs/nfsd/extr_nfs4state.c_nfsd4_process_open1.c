
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd_net {int dummy; } ;
struct nfsd4_open {int op_odstate; int op_stp; struct nfs4_openowner* op_openowner; int op_seqid; int op_owner; int * op_file; int op_clientid; } ;
struct TYPE_4__ {TYPE_1__* fh_export; } ;
struct nfsd4_compound_state {TYPE_2__ current_fh; struct nfs4_client* clp; } ;
struct nfs4_openowner {int oo_flags; int oo_owner; } ;
struct nfs4_client {int dummy; } ;
typedef int clientid_t ;
typedef scalar_t__ __be32 ;
struct TYPE_3__ {int ex_flags; } ;


 int NFS4_OO_CONFIRMED ;
 int NFSEXP_PNFS ;
 scalar_t__ STALE_CLIENTID (int *,struct nfsd_net*) ;
 int alloc_clnt_odstate (struct nfs4_client*) ;
 struct nfs4_openowner* alloc_init_open_stateowner (unsigned int,struct nfsd4_open*,struct nfsd4_compound_state*) ;
 struct nfs4_openowner* find_openstateowner_str (unsigned int,struct nfsd4_open*,struct nfs4_client*) ;
 scalar_t__ lookup_clientid (int *,struct nfsd4_compound_state*,struct nfsd_net*) ;
 int nfs4_alloc_open_stateid (struct nfs4_client*) ;
 scalar_t__ nfs_ok ;
 int * nfsd4_alloc_file () ;
 scalar_t__ nfsd4_check_seqid (struct nfsd4_compound_state*,int *,int ) ;
 scalar_t__ nfsd4_has_session (struct nfsd4_compound_state*) ;
 scalar_t__ nfserr_jukebox ;
 scalar_t__ nfserr_stale_clientid ;
 unsigned int ownerstr_hashval (int *) ;
 int release_openowner (struct nfs4_openowner*) ;

__be32
nfsd4_process_open1(struct nfsd4_compound_state *cstate,
      struct nfsd4_open *open, struct nfsd_net *nn)
{
 clientid_t *clientid = &open->op_clientid;
 struct nfs4_client *clp = ((void*)0);
 unsigned int strhashval;
 struct nfs4_openowner *oo = ((void*)0);
 __be32 status;

 if (STALE_CLIENTID(&open->op_clientid, nn))
  return nfserr_stale_clientid;




 open->op_file = nfsd4_alloc_file();
 if (open->op_file == ((void*)0))
  return nfserr_jukebox;

 status = lookup_clientid(clientid, cstate, nn);
 if (status)
  return status;
 clp = cstate->clp;

 strhashval = ownerstr_hashval(&open->op_owner);
 oo = find_openstateowner_str(strhashval, open, clp);
 open->op_openowner = oo;
 if (!oo) {
  goto new_owner;
 }
 if (!(oo->oo_flags & NFS4_OO_CONFIRMED)) {

  release_openowner(oo);
  open->op_openowner = ((void*)0);
  goto new_owner;
 }
 status = nfsd4_check_seqid(cstate, &oo->oo_owner, open->op_seqid);
 if (status)
  return status;
 goto alloc_stateid;
new_owner:
 oo = alloc_init_open_stateowner(strhashval, open, cstate);
 if (oo == ((void*)0))
  return nfserr_jukebox;
 open->op_openowner = oo;
alloc_stateid:
 open->op_stp = nfs4_alloc_open_stateid(clp);
 if (!open->op_stp)
  return nfserr_jukebox;

 if (nfsd4_has_session(cstate) &&
     (cstate->current_fh.fh_export->ex_flags & NFSEXP_PNFS)) {
  open->op_odstate = alloc_clnt_odstate(clp);
  if (!open->op_odstate)
   return nfserr_jukebox;
 }

 return nfs_ok;
}
