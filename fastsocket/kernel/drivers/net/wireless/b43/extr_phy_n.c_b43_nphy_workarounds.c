
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; int wl; } ;
struct b43_phy_n {scalar_t__ hang_avoid; } ;


 int B43_NPHY_IQFLIP ;
 int B43_NPHY_IQFLIP_ADC1 ;
 int B43_NPHY_IQFLIP_ADC2 ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int b43_nphy_classifier (struct b43_wldev*,int,int) ;
 int b43_nphy_stay_in_carrier_search (struct b43_wldev*,int) ;
 int b43_nphy_workarounds_rev1_2 (struct b43_wldev*) ;
 int b43_nphy_workarounds_rev3plus (struct b43_wldev*) ;
 int b43_nphy_workarounds_rev7plus (struct b43_wldev*) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_nphy_workarounds(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_n *nphy = phy->n;

 if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ)
  b43_nphy_classifier(dev, 1, 0);
 else
  b43_nphy_classifier(dev, 1, 1);

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 1);

 b43_phy_set(dev, B43_NPHY_IQFLIP,
      B43_NPHY_IQFLIP_ADC1 | B43_NPHY_IQFLIP_ADC2);

 if (dev->phy.rev >= 7)
  b43_nphy_workarounds_rev7plus(dev);
 else if (dev->phy.rev >= 3)
  b43_nphy_workarounds_rev3plus(dev);
 else
  b43_nphy_workarounds_rev1_2(dev);

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 0);
}
