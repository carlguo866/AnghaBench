
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct phy_device {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ MDIO_AN_EEE_ADV ;
 int MDIO_MMD_AN ;
 int __phy_write (struct phy_device*,int,scalar_t__) ;
 int rtl821x_write_page (struct phy_device*,int) ;

__attribute__((used)) static int rtlgen_write_mmd(struct phy_device *phydev, int devnum, u16 regnum,
       u16 val)
{
 int ret;

 if (devnum == MDIO_MMD_AN && regnum == MDIO_AN_EEE_ADV) {
  rtl821x_write_page(phydev, 0xa5d);
  ret = __phy_write(phydev, 0x10, val);
  rtl821x_write_page(phydev, 0);
 } else {
  ret = -EOPNOTSUPP;
 }

 return ret;
}
