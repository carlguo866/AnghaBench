
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {int cap; } ;
struct TYPE_3__ {int cap; } ;
struct ieee80211_sta {TYPE_2__ vht_cap; TYPE_1__ ht_cap; } ;
struct ieee80211_hw {int dummy; } ;


 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_VHT_CAP_SHORT_GI_80 ;
 scalar_t__ MAC_ID_STATIC_FOR_BROADCAST_MULTICAST ;

__attribute__((used)) static bool _rtl8821ae_get_ra_shortgi(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
         u8 mac_id)
{
 bool b_short_gi = 0;
 u8 b_curshortgi_40mhz = (sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_40) ?
    1 : 0;
 u8 b_curshortgi_20mhz = (sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_20) ?
    1 : 0;
 u8 b_curshortgi_80mhz = 0;
 b_curshortgi_80mhz = (sta->vht_cap.cap &
         IEEE80211_VHT_CAP_SHORT_GI_80) ? 1 : 0;

 if (mac_id == MAC_ID_STATIC_FOR_BROADCAST_MULTICAST)
   b_short_gi = 0;

 if (b_curshortgi_40mhz || b_curshortgi_80mhz
  || b_curshortgi_20mhz)
  b_short_gi = 1;

 return b_short_gi;
}
