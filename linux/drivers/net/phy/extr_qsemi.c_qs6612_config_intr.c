
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_QS6612_IMR ;
 int MII_QS6612_IMR_INIT ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int qs6612_config_intr(struct phy_device *phydev)
{
 int err;
 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  err = phy_write(phydev, MII_QS6612_IMR,
    MII_QS6612_IMR_INIT);
 else
  err = phy_write(phydev, MII_QS6612_IMR, 0);

 return err;

}
