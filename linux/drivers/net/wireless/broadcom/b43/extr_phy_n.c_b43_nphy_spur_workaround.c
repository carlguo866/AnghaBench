
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int channel; int rev; struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_n {scalar_t__ hang_avoid; scalar_t__ aband_spurwar_en; scalar_t__ gband_spurwar_en; } ;


 int B43_WARN_ON (int) ;
 scalar_t__ b43_is_40mhz (struct b43_wldev*) ;
 int b43_nphy_stay_in_carrier_search (struct b43_wldev*,int) ;

__attribute__((used)) static void b43_nphy_spur_workaround(struct b43_wldev *dev)
{
 struct b43_phy_n *nphy = dev->phy.n;

 u8 channel = dev->phy.channel;
 int tone[2] = { 57, 58 };
 u32 noise[2] = { 0x3FF, 0x3FF };

 B43_WARN_ON(dev->phy.rev < 3);

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 1);

 if (nphy->gband_spurwar_en) {

  if (channel == 11 && b43_is_40mhz(dev))
   ;
  else
   ;

 }

 if (nphy->aband_spurwar_en) {
  if (channel == 54) {
   tone[0] = 0x20;
   noise[0] = 0x25F;
  } else if (channel == 38 || channel == 102 || channel == 118) {
   if (0 ) {
    tone[0] = 0x20;
    noise[0] = 0x21F;
   } else {
    tone[0] = 0;
    noise[0] = 0;
   }
  } else if (channel == 134) {
   tone[0] = 0x20;
   noise[0] = 0x21F;
  } else if (channel == 151) {
   tone[0] = 0x10;
   noise[0] = 0x23F;
  } else if (channel == 153 || channel == 161) {
   tone[0] = 0x30;
   noise[0] = 0x23F;
  } else {
   tone[0] = 0;
   noise[0] = 0;
  }

  if (!tone[0] && !noise[0])
   ;
  else
   ;
 }

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 0);
}
