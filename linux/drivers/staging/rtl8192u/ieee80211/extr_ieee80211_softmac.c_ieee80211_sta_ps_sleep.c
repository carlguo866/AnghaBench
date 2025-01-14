
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int dtim_data; int beacon_interval; scalar_t__* last_dtim_sta_time; int dtim_period; } ;
struct ieee80211_device {int ps; int softmac_features; scalar_t__ mgmt_queue_tail; scalar_t__ mgmt_queue_head; TYPE_1__ current_network; scalar_t__ last_rx_ps_time; int dev; } ;


 int IEEE80211_DTIM_INVALID ;
 int IEEE80211_DTIM_MBCAST ;
 int IEEE80211_DTIM_UCAST ;
 int IEEE80211_DTIM_VALID ;
 int IEEE_SOFTMAC_SINGLE_QUEUE ;
 scalar_t__ dev_trans_start (int ) ;
 int jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static short ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32 *time_h,
        u32 *time_l)
{
 int timeout;
 u8 dtim;






 dtim = ieee->current_network.dtim_data;
 if (!(dtim & IEEE80211_DTIM_VALID))
  return 0;
 timeout = ieee->current_network.beacon_interval;
 ieee->current_network.dtim_data = IEEE80211_DTIM_INVALID;

 if (dtim & ((IEEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST) & ieee->ps))
  return 2;

 if (!time_after(jiffies,
   dev_trans_start(ieee->dev) + msecs_to_jiffies(timeout)))
  return 0;

 if (!time_after(jiffies,
   ieee->last_rx_ps_time + msecs_to_jiffies(timeout)))
  return 0;

 if ((ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE) &&
     (ieee->mgmt_queue_tail != ieee->mgmt_queue_head))
  return 0;

 if (time_l) {
  *time_l = ieee->current_network.last_dtim_sta_time[0]
   + (ieee->current_network.beacon_interval
      * ieee->current_network.dtim_period) * 1000;
 }

 if (time_h) {
  *time_h = ieee->current_network.last_dtim_sta_time[1];
  if (time_l && *time_l < ieee->current_network.last_dtim_sta_time[0])
   *time_h += 1;
 }

 return 1;
}
