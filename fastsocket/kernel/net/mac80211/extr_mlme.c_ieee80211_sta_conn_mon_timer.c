
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_if_managed {int monitor_work; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; TYPE_1__ u; } ;
struct ieee80211_local {int hw; scalar_t__ quiescing; } ;


 int ieee80211_queue_work (int *,int *) ;

__attribute__((used)) static void ieee80211_sta_conn_mon_timer(unsigned long data)
{
 struct ieee80211_sub_if_data *sdata =
  (struct ieee80211_sub_if_data *) data;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_local *local = sdata->local;

 if (local->quiescing)
  return;

 ieee80211_queue_work(&local->hw, &ifmgd->monitor_work);
}
