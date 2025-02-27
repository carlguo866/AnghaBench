
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int center_freq; } ;
struct b43_phy {int radio_ver; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_ht_channeltab_e_radio2059 {int phy_regs; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;


 int ESRCH ;
 int b43_phy_ht_channel_setup (struct b43_wldev*,int *,struct ieee80211_channel*) ;
 struct b43_phy_ht_channeltab_e_radio2059* b43_phy_ht_get_channeltab_e_r2059 (struct b43_wldev*,int ) ;
 int b43_radio_2059_channel_setup (struct b43_wldev*,struct b43_phy_ht_channeltab_e_radio2059 const*) ;

__attribute__((used)) static int b43_phy_ht_set_channel(struct b43_wldev *dev,
      struct ieee80211_channel *channel,
      enum nl80211_channel_type channel_type)
{
 struct b43_phy *phy = &dev->phy;

 const struct b43_phy_ht_channeltab_e_radio2059 *chent_r2059 = ((void*)0);

 if (phy->radio_ver == 0x2059) {
  chent_r2059 = b43_phy_ht_get_channeltab_e_r2059(dev,
       channel->center_freq);
  if (!chent_r2059)
   return -ESRCH;
 } else {
  return -ESRCH;
 }



 if (phy->radio_ver == 0x2059) {
  b43_radio_2059_channel_setup(dev, chent_r2059);
  b43_phy_ht_channel_setup(dev, &(chent_r2059->phy_regs),
      channel);
 } else {
  return -ESRCH;
 }

 return 0;
}
