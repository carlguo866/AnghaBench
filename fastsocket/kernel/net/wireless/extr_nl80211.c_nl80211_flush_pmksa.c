
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ops; TYPE_1__* ieee80211_ptr; } ;
struct genl_info {struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ops; TYPE_1__* ieee80211_ptr; } ;
struct TYPE_4__ {int flush_pmksa; } ;
struct TYPE_3__ {scalar_t__ iftype; } ;


 int EOPNOTSUPP ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int rdev_flush_pmksa (struct net_device*,struct net_device*) ;

__attribute__((used)) static int nl80211_flush_pmksa(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_STATION &&
     dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_CLIENT)
  return -EOPNOTSUPP;

 if (!rdev->ops->flush_pmksa)
  return -EOPNOTSUPP;

 return rdev_flush_pmksa(rdev, dev);
}
