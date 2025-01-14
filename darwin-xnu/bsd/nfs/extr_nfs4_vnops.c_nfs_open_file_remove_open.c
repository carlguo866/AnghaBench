
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct nfs_open_file {scalar_t__ nof_d_r; scalar_t__ nof_r; scalar_t__ nof_d_w; scalar_t__ nof_w; scalar_t__ nof_d_rw; scalar_t__ nof_rw; scalar_t__ nof_d_r_dw; scalar_t__ nof_r_dw; scalar_t__ nof_d_w_dw; scalar_t__ nof_w_dw; scalar_t__ nof_d_rw_dw; scalar_t__ nof_rw_dw; scalar_t__ nof_d_r_drw; scalar_t__ nof_r_drw; scalar_t__ nof_d_w_drw; scalar_t__ nof_w_drw; scalar_t__ nof_d_rw_drw; scalar_t__ nof_rw_drw; int nof_lock; int nof_opencnt; scalar_t__ nof_deny; scalar_t__ nof_access; TYPE_1__* nof_owner; int nof_np; } ;
struct TYPE_2__ {int noo_cred; } ;


 scalar_t__ NFS_OPEN_SHARE_ACCESS_BOTH ;
 scalar_t__ NFS_OPEN_SHARE_ACCESS_READ ;
 scalar_t__ NFS_OPEN_SHARE_ACCESS_WRITE ;
 scalar_t__ NFS_OPEN_SHARE_DENY_NONE ;
 scalar_t__ NFS_OPEN_SHARE_DENY_WRITE ;
 int NP (int ,char*,int ) ;
 int kauth_cred_getuid (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs_open_file_remove_open_find (struct nfs_open_file*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int*) ;

void
nfs_open_file_remove_open(struct nfs_open_file *nofp, uint32_t accessMode, uint32_t denyMode)
{
 uint32_t newAccessMode, newDenyMode;
 int delegated = 0;

 lck_mtx_lock(&nofp->nof_lock);
 nfs_open_file_remove_open_find(nofp, accessMode, denyMode, &newAccessMode, &newDenyMode, &delegated);


 if (denyMode == NFS_OPEN_SHARE_DENY_NONE) {
  if (accessMode == NFS_OPEN_SHARE_ACCESS_READ) {
   if (delegated) {
    if (nofp->nof_d_r == 0)
     NP(nofp->nof_np, "nfs: open(R) delegated count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_d_r--;
   } else {
    if (nofp->nof_r == 0)
     NP(nofp->nof_np, "nfs: open(R) count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_r--;
   }
  } else if (accessMode == NFS_OPEN_SHARE_ACCESS_WRITE) {
   if (delegated) {
    if (nofp->nof_d_w == 0)
     NP(nofp->nof_np, "nfs: open(W) delegated count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_d_w--;
   } else {
    if (nofp->nof_w == 0)
     NP(nofp->nof_np, "nfs: open(W) count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_w--;
   }
  } else if (accessMode == NFS_OPEN_SHARE_ACCESS_BOTH) {
   if (delegated) {
    if (nofp->nof_d_rw == 0)
     NP(nofp->nof_np, "nfs: open(RW) delegated count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_d_rw--;
   } else {
    if (nofp->nof_rw == 0)
     NP(nofp->nof_np, "nfs: open(RW) count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_rw--;
   }
  }
 } else if (denyMode == NFS_OPEN_SHARE_DENY_WRITE) {
  if (accessMode == NFS_OPEN_SHARE_ACCESS_READ) {
   if (delegated) {
    if (nofp->nof_d_r_dw == 0)
     NP(nofp->nof_np, "nfs: open(R,DW) delegated count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_d_r_dw--;
   } else {
    if (nofp->nof_r_dw == 0)
     NP(nofp->nof_np, "nfs: open(R,DW) count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_r_dw--;
   }
  } else if (accessMode == NFS_OPEN_SHARE_ACCESS_WRITE) {
   if (delegated) {
    if (nofp->nof_d_w_dw == 0)
     NP(nofp->nof_np, "nfs: open(W,DW) delegated count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_d_w_dw--;
   } else {
    if (nofp->nof_w_dw == 0)
     NP(nofp->nof_np, "nfs: open(W,DW) count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_w_dw--;
   }
  } else if (accessMode == NFS_OPEN_SHARE_ACCESS_BOTH) {
   if (delegated) {
    if (nofp->nof_d_rw_dw == 0)
     NP(nofp->nof_np, "nfs: open(RW,DW) delegated count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_d_rw_dw--;
   } else {
    if (nofp->nof_rw_dw == 0)
     NP(nofp->nof_np, "nfs: open(RW,DW) count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_rw_dw--;
   }
  }
 } else {
  if (accessMode == NFS_OPEN_SHARE_ACCESS_READ) {
   if (delegated) {
    if (nofp->nof_d_r_drw == 0)
     NP(nofp->nof_np, "nfs: open(R,DRW) delegated count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_d_r_drw--;
   } else {
    if (nofp->nof_r_drw == 0)
     NP(nofp->nof_np, "nfs: open(R,DRW) count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_r_drw--;
   }
  } else if (accessMode == NFS_OPEN_SHARE_ACCESS_WRITE) {
   if (delegated) {
    if (nofp->nof_d_w_drw == 0)
     NP(nofp->nof_np, "nfs: open(W,DRW) delegated count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_d_w_drw--;
   } else {
    if (nofp->nof_w_drw == 0)
     NP(nofp->nof_np, "nfs: open(W,DRW) count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_w_drw--;
   }
  } else if (accessMode == NFS_OPEN_SHARE_ACCESS_BOTH) {
   if (delegated) {
    if (nofp->nof_d_rw_drw == 0)
     NP(nofp->nof_np, "nfs: open(RW,DRW) delegated count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_d_rw_drw--;
   } else {
    if (nofp->nof_rw_drw == 0)
     NP(nofp->nof_np, "nfs: open(RW,DRW) count underrun, %d", kauth_cred_getuid(nofp->nof_owner->noo_cred));
    else
     nofp->nof_rw_drw--;
   }
  }
 }


 nofp->nof_access = newAccessMode;
 nofp->nof_deny = newDenyMode;
 nofp->nof_opencnt--;
 lck_mtx_unlock(&nofp->nof_lock);
}
