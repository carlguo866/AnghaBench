
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; } ;
struct TYPE_2__ {int id; } ;


 int GFP_KERNEL ;
 int NL80211_CMD_SCHED_SCAN_RESULTS ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_multicast_netns (int ,struct sk_buff*,int ,int ,int ) ;
 TYPE_1__ nl80211_scan_mcgrp ;
 scalar_t__ nl80211_send_sched_scan_msg (struct sk_buff*,struct cfg80211_registered_device*,struct net_device*,int ,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;

void nl80211_send_sched_scan_results(struct cfg80211_registered_device *rdev,
         struct net_device *netdev)
{
 struct sk_buff *msg;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return;

 if (nl80211_send_sched_scan_msg(msg, rdev, netdev, 0, 0, 0,
     NL80211_CMD_SCHED_SCAN_RESULTS) < 0) {
  nlmsg_free(msg);
  return;
 }

 genlmsg_multicast_netns(wiphy_net(&rdev->wiphy), msg, 0,
    nl80211_scan_mcgrp.id, GFP_KERNEL);
}
