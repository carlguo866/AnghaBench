
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_owner {int noo_flags; int noo_lock; } ;


 int NFS_OPEN_OWNER_BUSY ;
 int NFS_OPEN_OWNER_WANT ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int panic (char*) ;
 int wakeup (struct nfs_open_owner*) ;

void
nfs_open_owner_clear_busy(struct nfs_open_owner *noop)
{
 int wanted;

 lck_mtx_lock(&noop->noo_lock);
 if (!(noop->noo_flags & NFS_OPEN_OWNER_BUSY))
  panic("nfs_open_owner_clear_busy");
 wanted = (noop->noo_flags & NFS_OPEN_OWNER_WANT);
 noop->noo_flags &= ~(NFS_OPEN_OWNER_BUSY|NFS_OPEN_OWNER_WANT);
 lck_mtx_unlock(&noop->noo_lock);
 if (wanted)
  wakeup(noop);
}
