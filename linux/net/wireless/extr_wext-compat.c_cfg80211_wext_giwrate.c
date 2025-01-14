
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {scalar_t__ iftype; TYPE_3__* current_bss; int wiphy; } ;
struct station_info {int filled; int txrate; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_5__ {int bssid; } ;
struct TYPE_6__ {TYPE_2__ pub; } ;
struct TYPE_4__ {int get_station; } ;


 int BIT_ULL (int ) ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int NL80211_STA_INFO_TX_BITRATE ;
 int cfg80211_calculate_bitrate (int *) ;
 int cfg80211_sinfo_release_content (struct station_info*) ;
 int memcpy (int *,int ,int) ;
 int rdev_get_station (struct cfg80211_registered_device*,struct net_device*,int *,struct station_info*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static int cfg80211_wext_giwrate(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *rate, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct station_info sinfo = {};
 u8 addr[ETH_ALEN];
 int err;

 if (wdev->iftype != NL80211_IFTYPE_STATION)
  return -EOPNOTSUPP;

 if (!rdev->ops->get_station)
  return -EOPNOTSUPP;

 err = 0;
 wdev_lock(wdev);
 if (wdev->current_bss)
  memcpy(addr, wdev->current_bss->pub.bssid, ETH_ALEN);
 else
  err = -EOPNOTSUPP;
 wdev_unlock(wdev);
 if (err)
  return err;

 err = rdev_get_station(rdev, dev, addr, &sinfo);
 if (err)
  return err;

 if (!(sinfo.filled & BIT_ULL(NL80211_STA_INFO_TX_BITRATE))) {
  err = -EOPNOTSUPP;
  goto free;
 }

 rate->value = 100000 * cfg80211_calculate_bitrate(&sinfo.txrate);

free:
 cfg80211_sinfo_release_content(&sinfo);
 return err;
}
