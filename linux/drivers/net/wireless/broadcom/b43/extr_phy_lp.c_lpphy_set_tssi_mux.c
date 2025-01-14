
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;
typedef enum tssi_mux_mode { ____Placeholder_tssi_mux_mode } tssi_mux_mode ;


 int B2063_PA_CTL10 ;
 int B2063_PA_SP1 ;
 int B43_LPPHY_AFE_CTL_OVRVAL ;
 int B43_PHY_OFDM (int) ;
 int B43_WARN_ON (int) ;
 int TSSI_MUX_EXT ;
 int TSSI_MUX_POSTPA ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_radio_mask (struct b43_wldev*,int ,int) ;
 int b43_radio_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_radio_set (struct b43_wldev*,int ,int) ;
 int b43_radio_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void lpphy_set_tssi_mux(struct b43_wldev *dev, enum tssi_mux_mode mode)
{
 if (mode != TSSI_MUX_EXT) {
  b43_radio_set(dev, B2063_PA_SP1, 0x2);
  b43_phy_set(dev, B43_PHY_OFDM(0xF3), 0x1000);
  b43_radio_write(dev, B2063_PA_CTL10, 0x51);
  if (mode == TSSI_MUX_POSTPA) {
   b43_radio_mask(dev, B2063_PA_SP1, 0xFFFE);
   b43_phy_mask(dev, B43_LPPHY_AFE_CTL_OVRVAL, 0xFFC7);
  } else {
   b43_radio_maskset(dev, B2063_PA_SP1, 0xFFFE, 0x1);
   b43_phy_maskset(dev, B43_LPPHY_AFE_CTL_OVRVAL,
     0xFFC7, 0x20);
  }
 } else {
  B43_WARN_ON(1);
 }
}
