
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_PHY_LCN_AFE_CTL1 ;
 int B43_PHY_LCN_AFE_CTL2 ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_phy_lcn_afe_set_unset(struct b43_wldev *dev)
{
 u16 afe_ctl2 = b43_phy_read(dev, B43_PHY_LCN_AFE_CTL2);
 u16 afe_ctl1 = b43_phy_read(dev, B43_PHY_LCN_AFE_CTL1);

 b43_phy_write(dev, B43_PHY_LCN_AFE_CTL2, afe_ctl2 | 0x1);
 b43_phy_write(dev, B43_PHY_LCN_AFE_CTL1, afe_ctl1 | 0x1);

 b43_phy_write(dev, B43_PHY_LCN_AFE_CTL2, afe_ctl2 & ~0x1);
 b43_phy_write(dev, B43_PHY_LCN_AFE_CTL1, afe_ctl1 & ~0x1);

 b43_phy_write(dev, B43_PHY_LCN_AFE_CTL2, afe_ctl2);
 b43_phy_write(dev, B43_PHY_LCN_AFE_CTL1, afe_ctl1);
}
