
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_key* iv_nw_keys; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;
struct ieee80211_key {scalar_t__ wk_keyix; } ;


 scalar_t__ IEEE80211_KEYIX_NONE ;
 size_t IEEE80211_WEP_NKID ;
 int wpi_load_key (struct ieee80211_node*,struct ieee80211_key*) ;

__attribute__((used)) static int
wpi_set_global_keys(struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211_key *wk = &vap->iv_nw_keys[0];
 int error = 1;

 for (; wk < &vap->iv_nw_keys[IEEE80211_WEP_NKID] && error; wk++)
  if (wk->wk_keyix != IEEE80211_KEYIX_NONE)
   error = wpi_load_key(ni, wk);

 return !error;
}
