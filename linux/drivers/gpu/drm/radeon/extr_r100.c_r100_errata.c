
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ family; int pll_errata; } ;


 int CHIP_ERRATA_PLL_DELAY ;
 int CHIP_ERRATA_PLL_DUMMYREADS ;
 scalar_t__ CHIP_RS100 ;
 scalar_t__ CHIP_RS200 ;
 scalar_t__ CHIP_RV100 ;
 scalar_t__ CHIP_RV200 ;

__attribute__((used)) static void r100_errata(struct radeon_device *rdev)
{
 rdev->pll_errata = 0;

 if (rdev->family == CHIP_RV200 || rdev->family == CHIP_RS200) {
  rdev->pll_errata |= CHIP_ERRATA_PLL_DUMMYREADS;
 }

 if (rdev->family == CHIP_RV100 ||
     rdev->family == CHIP_RS100 ||
     rdev->family == CHIP_RS200) {
  rdev->pll_errata |= CHIP_ERRATA_PLL_DELAY;
 }
}
