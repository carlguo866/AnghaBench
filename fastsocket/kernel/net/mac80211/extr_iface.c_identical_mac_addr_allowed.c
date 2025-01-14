
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_AP_VLAN ;
 int NL80211_IFTYPE_MONITOR ;
 int NL80211_IFTYPE_P2P_DEVICE ;
 int NL80211_IFTYPE_WDS ;

__attribute__((used)) static inline int identical_mac_addr_allowed(int type1, int type2)
{
 return type1 == NL80211_IFTYPE_MONITOR ||
  type2 == NL80211_IFTYPE_MONITOR ||
  type1 == NL80211_IFTYPE_P2P_DEVICE ||
  type2 == NL80211_IFTYPE_P2P_DEVICE ||
  (type1 == NL80211_IFTYPE_AP && type2 == NL80211_IFTYPE_WDS) ||
  (type1 == NL80211_IFTYPE_WDS &&
   (type2 == NL80211_IFTYPE_WDS ||
    type2 == NL80211_IFTYPE_AP)) ||
  (type1 == NL80211_IFTYPE_AP && type2 == NL80211_IFTYPE_AP_VLAN) ||
  (type1 == NL80211_IFTYPE_AP_VLAN &&
   (type2 == NL80211_IFTYPE_AP ||
    type2 == NL80211_IFTYPE_AP_VLAN));
}
