
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_VSC85XX_INT_MASK_MASK ;
 int MII_VSC85XX_INT_STATUS ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int vsc8584_did_interrupt(struct phy_device *phydev)
{
 int rc = 0;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  rc = phy_read(phydev, MII_VSC85XX_INT_STATUS);

 return (rc < 0) ? 0 : rc & MII_VSC85XX_INT_MASK_MASK;
}
