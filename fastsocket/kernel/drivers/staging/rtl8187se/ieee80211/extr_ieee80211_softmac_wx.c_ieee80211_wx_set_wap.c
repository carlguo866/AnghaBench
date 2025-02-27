
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
typedef int u8 ;
struct sockaddr {scalar_t__ sa_family; int sa_data; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {int bssid; } ;
struct ieee80211_device {short proto_started; int sync_scan_hurryup; scalar_t__ iw_mode; int wap_set; int wx_sem; int lock; TYPE_1__ current_network; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ IW_MODE_MASTER ;
 int down (int *) ;
 int ieee80211_start_protocol (struct ieee80211_device*) ;
 int ieee80211_stop_protocol (struct ieee80211_device*) ;
 scalar_t__ memcmp (int ,int *,int ) ;
 int memcpy (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up (int *) ;

int ieee80211_wx_set_wap(struct ieee80211_device *ieee,
    struct iw_request_info *info,
    union iwreq_data *awrq,
    char *extra)
{

 int ret = 0;
 u8 zero[] = {0,0,0,0,0,0};
 unsigned long flags;

 short ifup = ieee->proto_started;
 struct sockaddr *temp = (struct sockaddr *)awrq;


 ieee->sync_scan_hurryup = 1;

 down(&ieee->wx_sem);

 if (ieee->iw_mode == IW_MODE_MASTER){
  ret = -1;
  goto out;
 }

 if (temp->sa_family != ARPHRD_ETHER){
  ret = -EINVAL;
  goto out;
 }

 if (ifup)
  ieee80211_stop_protocol(ieee);




 spin_lock_irqsave(&ieee->lock, flags);

 memcpy(ieee->current_network.bssid, temp->sa_data, ETH_ALEN);
 ieee->wap_set = memcmp(temp->sa_data, zero,ETH_ALEN)!=0;


 spin_unlock_irqrestore(&ieee->lock, flags);

 if (ifup)
  ieee80211_start_protocol(ieee);

out:
 up(&ieee->wx_sem);
 return ret;
}
