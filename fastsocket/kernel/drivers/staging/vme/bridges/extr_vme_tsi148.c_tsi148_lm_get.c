
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vme_cycle_t ;
typedef int vme_address_t ;
typedef int u32 ;
struct vme_lm_resource {int mtx; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ TSI148_LCSR_LMAT ;
 int TSI148_LCSR_LMAT_AS_A16 ;
 int TSI148_LCSR_LMAT_AS_A24 ;
 int TSI148_LCSR_LMAT_AS_A32 ;
 int TSI148_LCSR_LMAT_AS_A64 ;
 int TSI148_LCSR_LMAT_AS_M ;
 int TSI148_LCSR_LMAT_DATA ;
 int TSI148_LCSR_LMAT_EN ;
 int TSI148_LCSR_LMAT_NPRIV ;
 int TSI148_LCSR_LMAT_PGM ;
 int TSI148_LCSR_LMAT_SUPR ;
 scalar_t__ TSI148_LCSR_LMBAL ;
 scalar_t__ TSI148_LCSR_LMBAU ;
 int VME_A16 ;
 int VME_A24 ;
 int VME_A32 ;
 int VME_A64 ;
 int VME_DATA ;
 int VME_PROG ;
 int VME_SUPER ;
 int VME_USER ;
 int ioread32be (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_join (int,int,unsigned long long*) ;
 TYPE_1__* tsi148_bridge ;

int tsi148_lm_get(struct vme_lm_resource *lm, unsigned long long *lm_base,
 vme_address_t *aspace, vme_cycle_t *cycle)
{
 u32 lm_base_high, lm_base_low, lm_ctl, enabled = 0;

 mutex_lock(&(lm->mtx));

 lm_base_high = ioread32be(tsi148_bridge->base + TSI148_LCSR_LMBAU);
 lm_base_low = ioread32be(tsi148_bridge->base + TSI148_LCSR_LMBAL);
 lm_ctl = ioread32be(tsi148_bridge->base + TSI148_LCSR_LMAT);

 reg_join(lm_base_high, lm_base_low, lm_base);

 if (lm_ctl & TSI148_LCSR_LMAT_EN)
  enabled = 1;

 if ((lm_ctl & TSI148_LCSR_LMAT_AS_M) == TSI148_LCSR_LMAT_AS_A16) {
  *aspace |= VME_A16;
 }
 if ((lm_ctl & TSI148_LCSR_LMAT_AS_M) == TSI148_LCSR_LMAT_AS_A24) {
  *aspace |= VME_A24;
 }
 if ((lm_ctl & TSI148_LCSR_LMAT_AS_M) == TSI148_LCSR_LMAT_AS_A32) {
  *aspace |= VME_A32;
 }
 if ((lm_ctl & TSI148_LCSR_LMAT_AS_M) == TSI148_LCSR_LMAT_AS_A64) {
  *aspace |= VME_A64;
 }

 if (lm_ctl & TSI148_LCSR_LMAT_SUPR)
  *cycle |= VME_SUPER;
 if (lm_ctl & TSI148_LCSR_LMAT_NPRIV)
  *cycle |= VME_USER;
 if (lm_ctl & TSI148_LCSR_LMAT_PGM)
  *cycle |= VME_PROG;
 if (lm_ctl & TSI148_LCSR_LMAT_DATA)
  *cycle |= VME_DATA;

 mutex_unlock(&(lm->mtx));

 return enabled;
}
