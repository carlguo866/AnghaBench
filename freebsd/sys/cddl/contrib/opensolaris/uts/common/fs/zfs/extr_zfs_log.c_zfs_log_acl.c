
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ z_sync_cnt; int z_id; TYPE_1__* z_zfsvfs; scalar_t__ z_unlinked; } ;
typedef TYPE_2__ znode_t ;
typedef int zilog_t ;
struct TYPE_16__ {int z_domain_str_sz; int z_fuid_cnt; int z_domain_cnt; } ;
typedef TYPE_3__ zfs_fuid_info_t ;
struct TYPE_17__ {size_t vsa_aclentsz; int vsa_mask; int vsa_aclentp; int vsa_aclcnt; int vsa_aclflags; } ;
typedef TYPE_4__ vsecattr_t ;
typedef void* uint64_t ;
typedef int lr_acl_v0_t ;
struct TYPE_18__ {size_t lr_acl_bytes; int lr_fuidcnt; void* lr_aclcnt; void* lr_acl_flags; int lr_domcnt; int lr_foid; } ;
typedef TYPE_5__ lr_acl_t ;
struct TYPE_19__ {int itx_sync; int itx_lr; } ;
typedef TYPE_6__ itx_t ;
typedef int dmu_tx_t ;
typedef int caddr_t ;
typedef void ace_t ;
struct TYPE_14__ {scalar_t__ z_version; } ;


 int TX_ACL ;
 int TX_ACL_V0 ;
 int VSA_ACE_ACLFLAGS ;
 size_t ZIL_ACE_LENGTH (size_t) ;
 scalar_t__ ZPL_VERSION_FUID ;
 int bcopy (int ,void*,size_t) ;
 int zfs_log_fuid_domains (TYPE_3__*,void*) ;
 void* zfs_log_fuid_ids (TYPE_3__*,void*) ;
 int zil_itx_assign (int *,TYPE_6__*,int *) ;
 TYPE_6__* zil_itx_create (int,size_t) ;
 scalar_t__ zil_replaying (int *,int *) ;

void
zfs_log_acl(zilog_t *zilog, dmu_tx_t *tx, znode_t *zp,
    vsecattr_t *vsecp, zfs_fuid_info_t *fuidp)
{
 itx_t *itx;
 lr_acl_v0_t *lrv0;
 lr_acl_t *lr;
 int txtype;
 int lrsize;
 size_t txsize;
 size_t aclbytes = vsecp->vsa_aclentsz;

 if (zil_replaying(zilog, tx) || zp->z_unlinked)
  return;

 txtype = (zp->z_zfsvfs->z_version < ZPL_VERSION_FUID) ?
     TX_ACL_V0 : TX_ACL;

 if (txtype == TX_ACL)
  lrsize = sizeof (*lr);
 else
  lrsize = sizeof (*lrv0);

 txsize = lrsize +
     ((txtype == TX_ACL) ? ZIL_ACE_LENGTH(aclbytes) : aclbytes) +
     (fuidp ? fuidp->z_domain_str_sz : 0) +
     sizeof (uint64_t) * (fuidp ? fuidp->z_fuid_cnt : 0);

 itx = zil_itx_create(txtype, txsize);

 lr = (lr_acl_t *)&itx->itx_lr;
 lr->lr_foid = zp->z_id;
 if (txtype == TX_ACL) {
  lr->lr_acl_bytes = aclbytes;
  lr->lr_domcnt = fuidp ? fuidp->z_domain_cnt : 0;
  lr->lr_fuidcnt = fuidp ? fuidp->z_fuid_cnt : 0;
  if (vsecp->vsa_mask & VSA_ACE_ACLFLAGS)
   lr->lr_acl_flags = (uint64_t)vsecp->vsa_aclflags;
  else
   lr->lr_acl_flags = 0;
 }
 lr->lr_aclcnt = (uint64_t)vsecp->vsa_aclcnt;

 if (txtype == TX_ACL_V0) {
  lrv0 = (lr_acl_v0_t *)lr;
  bcopy(vsecp->vsa_aclentp, (ace_t *)(lrv0 + 1), aclbytes);
 } else {
  void *start = (ace_t *)(lr + 1);

  bcopy(vsecp->vsa_aclentp, start, aclbytes);

  start = (caddr_t)start + ZIL_ACE_LENGTH(aclbytes);

  if (fuidp) {
   start = zfs_log_fuid_ids(fuidp, start);
   (void) zfs_log_fuid_domains(fuidp, start);
  }
 }

 itx->itx_sync = (zp->z_sync_cnt != 0);
 zil_itx_assign(zilog, itx, tx);
}
