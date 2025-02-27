
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int wiphy; struct wireless_dev* netdev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int wiphy; struct net_device* netdev; } ;
struct genl_ops {int internal_flags; } ;
struct genl_info {struct wireless_dev** user_ptr; int attrs; } ;
struct cfg80211_registered_device {int wiphy; struct cfg80211_registered_device* netdev; } ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int ENETDOWN ;
 scalar_t__ IS_ERR (struct wireless_dev*) ;
 int NL80211_FLAG_CHECK_NETDEV_UP ;
 int NL80211_FLAG_NEED_NETDEV ;
 int NL80211_FLAG_NEED_RTNL ;
 int NL80211_FLAG_NEED_WDEV ;
 int NL80211_FLAG_NEED_WIPHY ;
 int PTR_ERR (struct wireless_dev*) ;
 struct wireless_dev* __cfg80211_wdev_from_attrs (int ,int ) ;
 struct wireless_dev* cfg80211_get_dev_from_info (int ,struct genl_info*) ;
 int dev_hold (struct wireless_dev*) ;
 int genl_info_net (struct genl_info*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int wdev_running (struct wireless_dev*) ;
 struct wireless_dev* wiphy_to_rdev (int ) ;

__attribute__((used)) static int nl80211_pre_doit(const struct genl_ops *ops, struct sk_buff *skb,
       struct genl_info *info)
{
 struct cfg80211_registered_device *rdev;
 struct wireless_dev *wdev;
 struct net_device *dev;
 bool rtnl = ops->internal_flags & NL80211_FLAG_NEED_RTNL;

 if (rtnl)
  rtnl_lock();

 if (ops->internal_flags & NL80211_FLAG_NEED_WIPHY) {
  rdev = cfg80211_get_dev_from_info(genl_info_net(info), info);
  if (IS_ERR(rdev)) {
   if (rtnl)
    rtnl_unlock();
   return PTR_ERR(rdev);
  }
  info->user_ptr[0] = rdev;
 } else if (ops->internal_flags & NL80211_FLAG_NEED_NETDEV ||
     ops->internal_flags & NL80211_FLAG_NEED_WDEV) {
  ASSERT_RTNL();

  wdev = __cfg80211_wdev_from_attrs(genl_info_net(info),
        info->attrs);
  if (IS_ERR(wdev)) {
   if (rtnl)
    rtnl_unlock();
   return PTR_ERR(wdev);
  }

  dev = wdev->netdev;
  rdev = wiphy_to_rdev(wdev->wiphy);

  if (ops->internal_flags & NL80211_FLAG_NEED_NETDEV) {
   if (!dev) {
    if (rtnl)
     rtnl_unlock();
    return -EINVAL;
   }

   info->user_ptr[1] = dev;
  } else {
   info->user_ptr[1] = wdev;
  }

  if (ops->internal_flags & NL80211_FLAG_CHECK_NETDEV_UP &&
      !wdev_running(wdev)) {
   if (rtnl)
    rtnl_unlock();
   return -ENETDOWN;
  }

  if (dev)
   dev_hold(dev);

  info->user_ptr[0] = rdev;
 }

 return 0;
}
