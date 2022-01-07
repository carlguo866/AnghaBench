
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int max_sp; int uapsd_queues; } ;
struct sta_info {TYPE_1__ sta; } ;


 int IEEE80211_FRAME_RELEASE_UAPSD ;
 int ieee80211_sta_ps_deliver_response (struct sta_info*,int,int ,int ) ;

void ieee80211_sta_ps_deliver_uapsd(struct sta_info *sta)
{
 int n_frames = sta->sta.max_sp;
 u8 delivery_enabled = sta->sta.uapsd_queues;







 if (!delivery_enabled)
  return;

 switch (sta->sta.max_sp) {
 case 1:
  n_frames = 2;
  break;
 case 2:
  n_frames = 4;
  break;
 case 3:
  n_frames = 6;
  break;
 case 0:

  n_frames = 8;
  break;
 }

 ieee80211_sta_ps_deliver_response(sta, n_frames, ~delivery_enabled,
       IEEE80211_FRAME_RELEASE_UAPSD);
}
