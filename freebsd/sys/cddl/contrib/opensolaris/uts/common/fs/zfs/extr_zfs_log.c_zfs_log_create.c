
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int z_dnodesize; int z_zfsvfs; int z_sa_hdl; int z_gid; int z_uid; int z_mode; int z_id; } ;
typedef TYPE_1__ znode_t ;
typedef int zilog_t ;
struct TYPE_20__ {int z_fuid_cnt; int z_domain_cnt; void* z_fuid_group; void* z_fuid_owner; scalar_t__ z_domain_str_sz; } ;
typedef TYPE_2__ zfs_fuid_info_t ;
struct TYPE_21__ {int xva_mapsize; } ;
typedef TYPE_3__ xvattr_t ;
struct TYPE_22__ {size_t vsa_aclentsz; int vsa_aclflags; char* vsa_aclentp; int vsa_aclcnt; } ;
typedef TYPE_4__ vsecattr_t ;
struct TYPE_23__ {int va_mask; } ;
typedef TYPE_5__ vattr_t ;
typedef void* uint64_t ;
struct TYPE_24__ {scalar_t__ lr_rdev; scalar_t__* lr_crtime; scalar_t__ lr_gen; void* lr_gid; void* lr_uid; int lr_mode; int lr_foid; int lr_doid; } ;
typedef TYPE_6__ lr_create_t ;
typedef int lr_attr_t ;
struct TYPE_25__ {size_t lr_acl_bytes; int lr_fuidcnt; void* lr_acl_flags; int lr_domcnt; int lr_aclcnt; } ;
typedef TYPE_7__ lr_acl_create_t ;
struct TYPE_26__ {int itx_lr; } ;
typedef TYPE_8__ itx_t ;
typedef int dmu_tx_t ;
typedef void* caddr_t ;


 int AT_XVATTR ;
 int DNODE_SHIFT ;
 int IS_EPHEMERAL (int ) ;
 int LR_FOID_SET_SLOTS (int ,int) ;
 int SA_ZPL_CRTIME (int ) ;
 int SA_ZPL_GEN (int ) ;
 int SA_ZPL_RDEV (int ) ;
 int TX_CREATE ;
 int TX_CREATE_ATTR ;
 int TX_MKDIR ;
 int TX_MKDIR_ATTR ;
 int TX_MKXATTR ;
 int VSA_ACE_ACLFLAGS ;
 int ZIL_ACE_LENGTH (size_t) ;
 size_t ZIL_XVAT_SIZE (int ) ;
 int bcopy (char*,void*,size_t) ;
 scalar_t__ sa_lookup (int ,int ,scalar_t__*,int) ;
 int strlen (char*) ;
 void* zfs_log_fuid_domains (TYPE_2__*,void*) ;
 void* zfs_log_fuid_ids (TYPE_2__*,void*) ;
 int zfs_log_xvattr (int *,TYPE_3__*) ;
 int zil_itx_assign (int *,TYPE_8__*,int *) ;
 TYPE_8__* zil_itx_create (void*,size_t) ;
 scalar_t__ zil_replaying (int *,int *) ;

void
zfs_log_create(zilog_t *zilog, dmu_tx_t *tx, uint64_t txtype,
    znode_t *dzp, znode_t *zp, char *name, vsecattr_t *vsecp,
    zfs_fuid_info_t *fuidp, vattr_t *vap)
{
 itx_t *itx;
 lr_create_t *lr;
 lr_acl_create_t *lracl;
 size_t aclsize = (vsecp != ((void*)0)) ? vsecp->vsa_aclentsz : 0;
 size_t xvatsize = 0;
 size_t txsize;
 xvattr_t *xvap = (xvattr_t *)vap;
 void *end;
 size_t lrsize;
 size_t namesize = strlen(name) + 1;
 size_t fuidsz = 0;

 if (zil_replaying(zilog, tx))
  return;





 if (fuidp) {
  fuidsz += fuidp->z_domain_str_sz;
  fuidsz += fuidp->z_fuid_cnt * sizeof (uint64_t);
 }

 if (vap->va_mask & AT_XVATTR)
  xvatsize = ZIL_XVAT_SIZE(xvap->xva_mapsize);

 if ((int)txtype == TX_CREATE_ATTR || (int)txtype == TX_MKDIR_ATTR ||
     (int)txtype == TX_CREATE || (int)txtype == TX_MKDIR ||
     (int)txtype == TX_MKXATTR) {
  txsize = sizeof (*lr) + namesize + fuidsz + xvatsize;
  lrsize = sizeof (*lr);
 } else {
  txsize =
      sizeof (lr_acl_create_t) + namesize + fuidsz +
      ZIL_ACE_LENGTH(aclsize) + xvatsize;
  lrsize = sizeof (lr_acl_create_t);
 }

 itx = zil_itx_create(txtype, txsize);

 lr = (lr_create_t *)&itx->itx_lr;
 lr->lr_doid = dzp->z_id;
 lr->lr_foid = zp->z_id;

 LR_FOID_SET_SLOTS(lr->lr_foid, zp->z_dnodesize >> DNODE_SHIFT);
 lr->lr_mode = zp->z_mode;
 if (!IS_EPHEMERAL(zp->z_uid)) {
  lr->lr_uid = (uint64_t)zp->z_uid;
 } else {
  lr->lr_uid = fuidp->z_fuid_owner;
 }
 if (!IS_EPHEMERAL(zp->z_gid)) {
  lr->lr_gid = (uint64_t)zp->z_gid;
 } else {
  lr->lr_gid = fuidp->z_fuid_group;
 }
 (void) sa_lookup(zp->z_sa_hdl, SA_ZPL_GEN(zp->z_zfsvfs), &lr->lr_gen,
     sizeof (uint64_t));
 (void) sa_lookup(zp->z_sa_hdl, SA_ZPL_CRTIME(zp->z_zfsvfs),
     lr->lr_crtime, sizeof (uint64_t) * 2);

 if (sa_lookup(zp->z_sa_hdl, SA_ZPL_RDEV(zp->z_zfsvfs), &lr->lr_rdev,
     sizeof (lr->lr_rdev)) != 0)
  lr->lr_rdev = 0;




 if (vap->va_mask & AT_XVATTR) {
  zfs_log_xvattr((lr_attr_t *)((caddr_t)lr + lrsize), xvap);
  end = (caddr_t)lr + lrsize + xvatsize;
 } else {
  end = (caddr_t)lr + lrsize;
 }



 if (vsecp) {
  lracl = (lr_acl_create_t *)&itx->itx_lr;
  lracl->lr_aclcnt = vsecp->vsa_aclcnt;
  lracl->lr_acl_bytes = aclsize;
  lracl->lr_domcnt = fuidp ? fuidp->z_domain_cnt : 0;
  lracl->lr_fuidcnt = fuidp ? fuidp->z_fuid_cnt : 0;
  if (vsecp->vsa_aclflags & VSA_ACE_ACLFLAGS)
   lracl->lr_acl_flags = (uint64_t)vsecp->vsa_aclflags;
  else
   lracl->lr_acl_flags = 0;

  bcopy(vsecp->vsa_aclentp, end, aclsize);
  end = (caddr_t)end + ZIL_ACE_LENGTH(aclsize);
 }


 if (fuidp) {
  end = zfs_log_fuid_ids(fuidp, end);
  end = zfs_log_fuid_domains(fuidp, end);
 }



 bcopy(name, end, namesize);

 zil_itx_assign(zilog, itx, tx);
}
