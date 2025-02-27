
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {scalar_t__ type; int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;


 scalar_t__ B43_PHYTYPE_A ;
 int B43_PHY_ENCORE ;
 int B43_PHY_ENCORE_EN ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_tab_noisescalea2 ;
 int b43_tab_noisescalea3 ;
 int b43_tab_noisescaleg1 ;
 int b43_tab_noisescaleg2 ;
 int b43_tab_noisescaleg3 ;
 int b43_write_nst (struct b43_wldev*,int ) ;
 int b43_write_null_nst (struct b43_wldev*) ;

__attribute__((used)) static void b43_wa_nst(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;

 if (phy->type == B43_PHYTYPE_A) {
  if (phy->rev <= 1)
   b43_write_null_nst(dev);
  else if (phy->rev == 2)
   b43_write_nst(dev, b43_tab_noisescalea2);
  else if (phy->rev == 3)
   b43_write_nst(dev, b43_tab_noisescalea3);
  else
   b43_write_nst(dev, b43_tab_noisescaleg3);
 } else {
  if (phy->rev >= 6) {
   if (b43_phy_read(dev, B43_PHY_ENCORE) & B43_PHY_ENCORE_EN)
    b43_write_nst(dev, b43_tab_noisescaleg3);
   else
    b43_write_nst(dev, b43_tab_noisescaleg2);
  } else {
   b43_write_nst(dev, b43_tab_noisescaleg1);
  }
 }
}
