
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct net_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
typedef int s32 ;
struct TYPE_2__ {int set_cqm_rssi_config; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int rdev_set_cqm_rssi_config (struct net_device*,struct net_device*,int ,int ) ;

__attribute__((used)) static int nl80211_set_cqm_rssi(struct genl_info *info,
    s32 threshold, u32 hysteresis)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct wireless_dev *wdev;
 struct net_device *dev = info->user_ptr[1];

 if (threshold > 0)
  return -EINVAL;

 wdev = dev->ieee80211_ptr;

 if (!rdev->ops->set_cqm_rssi_config)
  return -EOPNOTSUPP;

 if (wdev->iftype != NL80211_IFTYPE_STATION &&
     wdev->iftype != NL80211_IFTYPE_P2P_CLIENT)
  return -EOPNOTSUPP;

 return rdev_set_cqm_rssi_config(rdev, dev, threshold, hysteresis);
}
