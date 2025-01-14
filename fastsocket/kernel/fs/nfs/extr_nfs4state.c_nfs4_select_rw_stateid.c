
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nfs_lockowner {int dummy; } ;
struct nfs4_state {int inode; } ;
struct TYPE_7__ {scalar_t__ seqid; } ;
struct TYPE_8__ {TYPE_1__ stateid; } ;
typedef TYPE_2__ nfs4_stateid ;
typedef int fmode_t ;


 int ENOENT ;
 int NFS_CAP_STATEID_NFSV41 ;
 scalar_t__ nfs4_copy_delegation_stateid (TYPE_2__*,int ,int ) ;
 int nfs4_copy_lock_stateid (TYPE_2__*,struct nfs4_state*,struct nfs_lockowner const*) ;
 int nfs4_copy_open_stateid (TYPE_2__*,struct nfs4_state*) ;
 scalar_t__ nfs_server_capable (int ,int ) ;

int nfs4_select_rw_stateid(nfs4_stateid *dst, struct nfs4_state *state,
  fmode_t fmode, const struct nfs_lockowner *lockowner)
{
 int ret = 0;
 if (nfs4_copy_delegation_stateid(dst, state->inode, fmode))
  goto out;
 ret = nfs4_copy_lock_stateid(dst, state, lockowner);
 if (ret != -ENOENT)
  goto out;
 ret = nfs4_copy_open_stateid(dst, state);
out:
 if (nfs_server_capable(state->inode, NFS_CAP_STATEID_NFSV41))
  dst->stateid.seqid = 0;
 return ret;
}
