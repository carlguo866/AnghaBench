
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qib_pportdata {int* pkeys; TYPE_1__* dd; int * pkeyrefs; } ;
struct qib_ctxtdata {int* pkeys; struct qib_pportdata* ppd; } ;
typedef int atomic_t ;
struct TYPE_2__ {int (* f_set_ib_cfg ) (struct qib_pportdata*,int ,int ) ;} ;


 int ARRAY_SIZE (int*) ;
 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int QIB_DEFAULT_P_KEY ;
 int QIB_IB_CFG_PKEYS ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int stub1 (struct qib_pportdata*,int ,int ) ;

__attribute__((used)) static int qib_set_part_key(struct qib_ctxtdata *rcd, u16 key)
{
 struct qib_pportdata *ppd = rcd->ppd;
 int i, any = 0, pidx = -1;
 u16 lkey = key & 0x7FFF;
 int ret;

 if (lkey == (QIB_DEFAULT_P_KEY & 0x7FFF)) {

  ret = 0;
  goto bail;
 }

 if (!lkey) {
  ret = -EINVAL;
  goto bail;
 }







 key |= 0x8000;

 for (i = 0; i < ARRAY_SIZE(rcd->pkeys); i++) {
  if (!rcd->pkeys[i] && pidx == -1)
   pidx = i;
  if (rcd->pkeys[i] == key) {
   ret = -EEXIST;
   goto bail;
  }
 }
 if (pidx == -1) {
  ret = -EBUSY;
  goto bail;
 }
 for (any = i = 0; i < ARRAY_SIZE(ppd->pkeys); i++) {
  if (!ppd->pkeys[i]) {
   any++;
   continue;
  }
  if (ppd->pkeys[i] == key) {
   atomic_t *pkrefs = &ppd->pkeyrefs[i];

   if (atomic_inc_return(pkrefs) > 1) {
    rcd->pkeys[pidx] = key;
    ret = 0;
    goto bail;
   } else {



    atomic_dec(pkrefs);
    any++;
   }
  }
  if ((ppd->pkeys[i] & 0x7FFF) == lkey) {





   ret = -EEXIST;
   goto bail;
  }
 }
 if (!any) {
  ret = -EBUSY;
  goto bail;
 }
 for (any = i = 0; i < ARRAY_SIZE(ppd->pkeys); i++) {
  if (!ppd->pkeys[i] &&
      atomic_inc_return(&ppd->pkeyrefs[i]) == 1) {
   rcd->pkeys[pidx] = key;
   ppd->pkeys[i] = key;
   (void) ppd->dd->f_set_ib_cfg(ppd, QIB_IB_CFG_PKEYS, 0);
   ret = 0;
   goto bail;
  }
 }
 ret = -EBUSY;

bail:
 return ret;
}
