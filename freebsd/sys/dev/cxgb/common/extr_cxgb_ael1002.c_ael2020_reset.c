
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cphy {scalar_t__ modtype; int priv; } ;


 int LASI_CTRL ;
 int MDIO_DEV_PMA_PMD ;
 int ael2020_get_module_type (struct cphy*,int ) ;
 int ael2020_intr_enable (struct cphy*) ;
 int ael2020_reset_regs ;
 int ael2020_setup_sr_edc (struct cphy*) ;
 int ael2020_setup_twinax_edc (struct cphy*,int) ;
 int edc_none ;
 int mdio_read (struct cphy*,int ,int ,unsigned int*) ;
 int msleep (int) ;
 int phy_modtype_none ;
 int phy_modtype_twinax ;
 int phy_modtype_twinax_long ;
 int set_phy_regs (struct cphy*,int ) ;
 int t3_phy_reset (struct cphy*,int ,int) ;

__attribute__((used)) static int ael2020_reset(struct cphy *phy, int wait)
{
 int err;
 unsigned int lasi_ctrl;


 err = mdio_read(phy, MDIO_DEV_PMA_PMD, LASI_CTRL, &lasi_ctrl);
 if (err)
  return err;

 err = t3_phy_reset(phy, MDIO_DEV_PMA_PMD, 125);
 if (err)
  return err;
 msleep(100);


 phy->priv = edc_none;
 err = set_phy_regs(phy, ael2020_reset_regs);
 if (err)
  return err;
 msleep(100);


 err = ael2020_get_module_type(phy, 0);
 if (err < 0)
  return err;
 phy->modtype = (u8)err;
 if (err == phy_modtype_none)
  err = 0;
 else if (err == phy_modtype_twinax || err == phy_modtype_twinax_long)
  err = ael2020_setup_twinax_edc(phy, err);
 else
  err = ael2020_setup_sr_edc(phy);
 if (err)
  return err;


 if (lasi_ctrl & 1)
  err = ael2020_intr_enable(phy);
 return err;
}
