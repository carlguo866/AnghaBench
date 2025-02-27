
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {int rev; int channel; int radio_on; } ;
struct b43_wldev {struct b43_phy phy; int wl; } ;


 int B43_MACCTL_ENABLED ;
 int B43_MMIO_MACCTL ;
 int B43_NPHY_RFCTL_CMD ;
 int B43_NPHY_RFCTL_CMD_CHIP0PU ;
 int b43_phy_mask (struct b43_wldev*,int ,int ) ;
 int b43_radio_2057_init (struct b43_wldev*) ;
 int b43_radio_init2055 (struct b43_wldev*) ;
 int b43_radio_init2056 (struct b43_wldev*) ;
 int b43_radio_mask (struct b43_wldev*,int,int) ;
 int b43_radio_write (struct b43_wldev*,int,int ) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_switch_channel (struct b43_wldev*,int ) ;
 int b43err (int ,char*) ;

__attribute__((used)) static void b43_nphy_op_software_rfkill(struct b43_wldev *dev,
     bool blocked)
{
 struct b43_phy *phy = &dev->phy;

 if (b43_read32(dev, B43_MMIO_MACCTL) & B43_MACCTL_ENABLED)
  b43err(dev->wl, "MAC not suspended\n");

 if (blocked) {
  if (phy->rev >= 19) {

  } else if (phy->rev >= 8) {
   b43_phy_mask(dev, B43_NPHY_RFCTL_CMD,
         ~B43_NPHY_RFCTL_CMD_CHIP0PU);
  } else if (phy->rev >= 7) {

  } else if (phy->rev >= 3) {
   b43_phy_mask(dev, B43_NPHY_RFCTL_CMD,
         ~B43_NPHY_RFCTL_CMD_CHIP0PU);

   b43_radio_mask(dev, 0x09, ~0x2);

   b43_radio_write(dev, 0x204D, 0);
   b43_radio_write(dev, 0x2053, 0);
   b43_radio_write(dev, 0x2058, 0);
   b43_radio_write(dev, 0x205E, 0);
   b43_radio_mask(dev, 0x2062, ~0xF0);
   b43_radio_write(dev, 0x2064, 0);

   b43_radio_write(dev, 0x304D, 0);
   b43_radio_write(dev, 0x3053, 0);
   b43_radio_write(dev, 0x3058, 0);
   b43_radio_write(dev, 0x305E, 0);
   b43_radio_mask(dev, 0x3062, ~0xF0);
   b43_radio_write(dev, 0x3064, 0);
  }
 } else {
  if (phy->rev >= 19) {

  } else if (phy->rev >= 7) {
   if (!dev->phy.radio_on)
    b43_radio_2057_init(dev);
   b43_switch_channel(dev, dev->phy.channel);
  } else if (phy->rev >= 3) {
   if (!dev->phy.radio_on)
    b43_radio_init2056(dev);
   b43_switch_channel(dev, dev->phy.channel);
  } else {
   b43_radio_init2055(dev);
  }
 }
}
