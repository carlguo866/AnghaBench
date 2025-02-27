
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_cc {int dummy; } ;


 int BCMA_CC_CHIPSTAT ;
 int BCMA_CC_CHIPST_4706_PKG_OPTION ;
 int BCMA_CC_PMU5_MAINPLL_SSB ;
 int BCMA_CC_PMU6_4706_PROCPLL_OFF ;
 int BCMA_CC_PMU6_4706_PROC_NDIV_INT_MASK ;
 int BCMA_CC_PMU6_4706_PROC_NDIV_INT_SHIFT ;
 int BCMA_CC_PMU6_4706_PROC_P1DIV_MASK ;
 int BCMA_CC_PMU6_4706_PROC_P1DIV_SHIFT ;
 int BCMA_CC_PMU6_4706_PROC_P2DIV_MASK ;
 int BCMA_CC_PMU6_4706_PROC_P2DIV_SHIFT ;
 int BUG_ON (int) ;
 int bcma_cc_read32 (struct bcma_drv_cc*,int ) ;
 int bcma_chipco_pll_read (struct bcma_drv_cc*,int) ;

__attribute__((used)) static u32 bcma_pmu_pll_clock_bcm4706(struct bcma_drv_cc *cc, u32 pll0, u32 m)
{
 u32 tmp, ndiv, p1div, p2div;
 u32 clock;

 BUG_ON(!m || m > 4);


 tmp = bcma_chipco_pll_read(cc, pll0 + BCMA_CC_PMU6_4706_PROCPLL_OFF);
 ndiv = (tmp & BCMA_CC_PMU6_4706_PROC_NDIV_INT_MASK)
  >> BCMA_CC_PMU6_4706_PROC_NDIV_INT_SHIFT;
 p1div = (tmp & BCMA_CC_PMU6_4706_PROC_P1DIV_MASK)
  >> BCMA_CC_PMU6_4706_PROC_P1DIV_SHIFT;
 p2div = (tmp & BCMA_CC_PMU6_4706_PROC_P2DIV_MASK)
  >> BCMA_CC_PMU6_4706_PROC_P2DIV_SHIFT;

 tmp = bcma_cc_read32(cc, BCMA_CC_CHIPSTAT);
 if (tmp & BCMA_CC_CHIPST_4706_PKG_OPTION)

  clock = (25000000 / 4) * ndiv * p2div / p1div;
 else

  clock = (25000000 / 2) * ndiv * p2div / p1div;

 if (m == BCMA_CC_PMU5_MAINPLL_SSB)
  clock = clock / 4;

 return clock;
}
