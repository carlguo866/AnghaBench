
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uio_t ;
typedef int thread_t ;
struct nfsreq_cbinfo {int dummy; } ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef TYPE_1__* nfsnode_t ;
typedef int mount_t ;
typedef int kauth_cred_t ;
struct TYPE_6__ {int n_fhsize; int n_fhp; } ;


 int ENXIO ;
 int MNT_ASYNC ;
 int NFSPROC_WRITE ;
 int NFSTOMP (TYPE_1__*) ;
 struct nfsmount* NFSTONMP (TYPE_1__*) ;
 scalar_t__ NFSX_FH (int) ;
 int NFSX_UNSIGNED ;
 int NFS_VER3 ;
 int NFS_WRITE_UNSTABLE ;
 scalar_t__ nfs_allow_async ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_request_async (TYPE_1__*,int *,struct nfsm_chain*,int ,int ,int ,int *,int ,struct nfsreq_cbinfo*,struct nfsreq**) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,size_t) ;
 int nfsm_chain_add_64 (int,struct nfsm_chain*,size_t) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_add_uio (struct nfsm_chain*,int ,size_t) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 scalar_t__ nfsm_rndup (size_t) ;
 int nfsmout_if (int) ;
 size_t uio_offset (int ) ;
 int vfs_flags (int ) ;

int
nfs3_write_rpc_async(
 nfsnode_t np,
 uio_t uio,
 size_t len,
 thread_t thd,
 kauth_cred_t cred,
 int iomode,
 struct nfsreq_cbinfo *cb,
 struct nfsreq **reqp)
{
 struct nfsmount *nmp;
 mount_t mp;
 int error = 0, nfsvers;
 struct nfsm_chain nmreq;

 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;


 if ((iomode != NFS_WRITE_UNSTABLE) && nfs_allow_async &&
     ((mp = NFSTOMP(np))) && (vfs_flags(mp) & MNT_ASYNC))
  iomode = NFS_WRITE_UNSTABLE;

 nfsm_chain_null(&nmreq);
 nfsm_chain_build_alloc_init(error, &nmreq,
  NFSX_FH(nfsvers) + 5 * NFSX_UNSIGNED + nfsm_rndup(len));
 nfsm_chain_add_fh(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
 if (nfsvers == NFS_VER3) {
  nfsm_chain_add_64(error, &nmreq, uio_offset(uio));
  nfsm_chain_add_32(error, &nmreq, len);
  nfsm_chain_add_32(error, &nmreq, iomode);
 } else {
  nfsm_chain_add_32(error, &nmreq, 0);
  nfsm_chain_add_32(error, &nmreq, uio_offset(uio));
  nfsm_chain_add_32(error, &nmreq, 0);
 }
 nfsm_chain_add_32(error, &nmreq, len);
 nfsmout_if(error);
 error = nfsm_chain_add_uio(&nmreq, uio, len);
 nfsm_chain_build_done(error, &nmreq);
 nfsmout_if(error);
 error = nfs_request_async(np, ((void*)0), &nmreq, NFSPROC_WRITE, thd, cred, ((void*)0), 0, cb, reqp);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 return (error);
}
