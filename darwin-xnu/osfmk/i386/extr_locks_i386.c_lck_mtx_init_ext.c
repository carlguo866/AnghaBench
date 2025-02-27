
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lck_mtx_pad32; scalar_t__ lck_mtx_state; scalar_t__ lck_mtx_owner; int * lck_mtx_ptr; int lck_mtx_tag; } ;
typedef TYPE_1__ lck_mtx_t ;
typedef int lck_mtx_ext_t ;
typedef int lck_grp_t ;
struct TYPE_9__ {int lck_attr_val; } ;
typedef TYPE_2__ lck_attr_t ;


 int LCK_ATTR_DEBUG ;
 TYPE_2__* LCK_ATTR_NULL ;
 int LCK_MTX_TAG_INDIRECT ;
 int LCK_TYPE_MTX ;
 TYPE_2__ LockDefaultLckAttr ;
 int lck_grp_lckcnt_incr (int *,int ) ;
 int lck_grp_reference (int *) ;
 int lck_mtx_ext_init (int *,int *,TYPE_2__*) ;

void
lck_mtx_init_ext(
 lck_mtx_t *lck,
 lck_mtx_ext_t *lck_ext,
 lck_grp_t *grp,
 lck_attr_t *attr)
{
 lck_attr_t *lck_attr;

 if (attr != LCK_ATTR_NULL)
  lck_attr = attr;
 else
  lck_attr = &LockDefaultLckAttr;

 if ((lck_attr->lck_attr_val) & LCK_ATTR_DEBUG) {
  lck_mtx_ext_init(lck_ext, grp, lck_attr);
  lck->lck_mtx_tag = LCK_MTX_TAG_INDIRECT;
  lck->lck_mtx_ptr = lck_ext;
 } else {
  lck->lck_mtx_owner = 0;
  lck->lck_mtx_state = 0;
 }
 lck->lck_mtx_pad32 = 0xFFFFFFFF;

 lck_grp_reference(grp);
 lck_grp_lckcnt_incr(grp, LCK_TYPE_MTX);
}
