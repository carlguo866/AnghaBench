
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int dummy; } ;


 int EINVAL ;
 int ETHTOOL_PHY_FAST_LINK_DOWN_OFF ;
 int FIELD_GET (int ,int) ;
 int MII_88E1540_COPPER_CTRL3 ;
 int MII_88E1540_COPPER_CTRL3_FAST_LINK_DOWN ;




 int MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_MASK ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int m88e1540_get_fld(struct phy_device *phydev, u8 *msecs)
{
 int val;

 val = phy_read(phydev, MII_88E1540_COPPER_CTRL3);
 if (val < 0)
  return val;

 if (!(val & MII_88E1540_COPPER_CTRL3_FAST_LINK_DOWN)) {
  *msecs = ETHTOOL_PHY_FAST_LINK_DOWN_OFF;
  return 0;
 }

 val = FIELD_GET(MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_MASK, val);

 switch (val) {
 case 131:
  *msecs = 0;
  break;
 case 130:
  *msecs = 10;
  break;
 case 129:
  *msecs = 20;
  break;
 case 128:
  *msecs = 40;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
