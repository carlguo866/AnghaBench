
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43_wldev {int dummy; } ;


 int B43_LPPHY_TABLEDATAHI ;
 int B43_LPPHY_TABLEDATALO ;
 int B43_LPPHY_TABLE_ADDR ;



 int B43_LPTAB_TYPEMASK ;
 int B43_WARN_ON (int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

void b43_lptab_write(struct b43_wldev *dev, u32 offset, u32 value)
{
 u32 type;

 type = offset & B43_LPTAB_TYPEMASK;
 offset &= ~B43_LPTAB_TYPEMASK;
 B43_WARN_ON(offset > 0xFFFF);

 switch (type) {
 case 128:
  B43_WARN_ON(value & ~0xFF);
  b43_phy_write(dev, B43_LPPHY_TABLE_ADDR, offset);
  b43_phy_write(dev, B43_LPPHY_TABLEDATALO, value);
  break;
 case 130:
  B43_WARN_ON(value & ~0xFFFF);
  b43_phy_write(dev, B43_LPPHY_TABLE_ADDR, offset);
  b43_phy_write(dev, B43_LPPHY_TABLEDATALO, value);
  break;
 case 129:
  b43_phy_write(dev, B43_LPPHY_TABLE_ADDR, offset);
  b43_phy_write(dev, B43_LPPHY_TABLEDATAHI, value >> 16);
  b43_phy_write(dev, B43_LPPHY_TABLEDATALO, value);
  break;
 default:
  B43_WARN_ON(1);
 }
}
