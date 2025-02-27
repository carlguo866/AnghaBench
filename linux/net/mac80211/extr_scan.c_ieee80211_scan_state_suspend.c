
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * chan; } ;
struct ieee80211_local {int next_scan_state; TYPE_1__ scan_chandef; } ;


 int HZ ;
 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int SCAN_RESUME ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_offchannel_return (struct ieee80211_local*) ;

__attribute__((used)) static void ieee80211_scan_state_suspend(struct ieee80211_local *local,
      unsigned long *next_delay)
{

 local->scan_chandef.chan = ((void*)0);
 ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_CHANNEL);


 ieee80211_offchannel_return(local);

 *next_delay = HZ / 5;

 local->next_scan_state = SCAN_RESUME;
}
