
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int wiphy; } ;


 int GFP_KERNEL ;
 int NL80211_CMD_TRIGGER_SCAN ;
 int NL80211_MCGRP_SCAN ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 scalar_t__ nl80211_prep_scan_msg (struct sk_buff*,struct cfg80211_registered_device*,struct wireless_dev*,int ,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;

void nl80211_send_scan_start(struct cfg80211_registered_device *rdev,
        struct wireless_dev *wdev)
{
 struct sk_buff *msg;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return;

 if (nl80211_prep_scan_msg(msg, rdev, wdev, 0, 0, 0,
      NL80211_CMD_TRIGGER_SCAN) < 0) {
  nlmsg_free(msg);
  return;
 }

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_SCAN, GFP_KERNEL);
}
