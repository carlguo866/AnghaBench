
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_val {int member_2; int member_3; int member_1; int member_0; } ;
struct cphy {int dummy; } ;


 int AEL2020_GPIO_CTRL ;
 int AEL2020_GPIO_LSTAT ;
 int AEL2020_GPIO_MODDET ;
 int MDIO_DEV_PMA_PMD ;
 int set_phy_regs (struct cphy*,struct reg_val*) ;
 int t3_phy_lasi_intr_disable (struct cphy*) ;

__attribute__((used)) static int ael2020_intr_disable(struct cphy *phy)
{
 struct reg_val regs[] = {
  { MDIO_DEV_PMA_PMD, AEL2020_GPIO_CTRL,
   0xffff, 0xb << (AEL2020_GPIO_LSTAT*4) },

  { MDIO_DEV_PMA_PMD, AEL2020_GPIO_CTRL,
   0xffff, 0x1 << (AEL2020_GPIO_MODDET*4) },


  { 0, 0, 0, 0 }
 };
 int err;

 err = set_phy_regs(phy, regs);
 if (err)
  return err;


 return t3_phy_lasi_intr_disable(phy);
}
