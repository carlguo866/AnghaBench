
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int owner_nlportid; TYPE_1__* netdev; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
struct cfg80211_nan_match_params {scalar_t__ info; scalar_t__ info_len; int peer_inst_id; int type; int inst_id; scalar_t__ addr; int cookie; } ;
typedef int gfp_t ;
struct TYPE_2__ {int ifindex; } ;


 scalar_t__ ETH_ALEN ;
 int NL80211_ATTR_COOKIE ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_NAN_MATCH ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_NAN_MATCH ;
 int NL80211_MCGRP_NAN ;
 int NL80211_NAN_FUNC_INSTANCE_ID ;
 int NL80211_NAN_FUNC_SERVICE_INFO ;
 int NL80211_NAN_FUNC_TYPE ;
 int NL80211_NAN_MATCH_FUNC_LOCAL ;
 int NL80211_NAN_MATCH_FUNC_PEER ;
 int NLMSG_DEFAULT_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int genlmsg_unicast (int ,struct sk_buff*,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_nan_match(struct wireless_dev *wdev,
   struct cfg80211_nan_match_params *match, gfp_t gfp)
{
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 struct nlattr *match_attr, *local_func_attr, *peer_func_attr;
 struct sk_buff *msg;
 void *hdr;

 if (WARN_ON(!match->inst_id || !match->peer_inst_id || !match->addr))
  return;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_NAN_MATCH);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     (wdev->netdev && nla_put_u32(msg, NL80211_ATTR_IFINDEX,
      wdev->netdev->ifindex)) ||
     nla_put_u64_64bit(msg, NL80211_ATTR_WDEV, wdev_id(wdev),
         NL80211_ATTR_PAD))
  goto nla_put_failure;

 if (nla_put_u64_64bit(msg, NL80211_ATTR_COOKIE, match->cookie,
         NL80211_ATTR_PAD) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, match->addr))
  goto nla_put_failure;

 match_attr = nla_nest_start_noflag(msg, NL80211_ATTR_NAN_MATCH);
 if (!match_attr)
  goto nla_put_failure;

 local_func_attr = nla_nest_start_noflag(msg,
      NL80211_NAN_MATCH_FUNC_LOCAL);
 if (!local_func_attr)
  goto nla_put_failure;

 if (nla_put_u8(msg, NL80211_NAN_FUNC_INSTANCE_ID, match->inst_id))
  goto nla_put_failure;

 nla_nest_end(msg, local_func_attr);

 peer_func_attr = nla_nest_start_noflag(msg,
            NL80211_NAN_MATCH_FUNC_PEER);
 if (!peer_func_attr)
  goto nla_put_failure;

 if (nla_put_u8(msg, NL80211_NAN_FUNC_TYPE, match->type) ||
     nla_put_u8(msg, NL80211_NAN_FUNC_INSTANCE_ID, match->peer_inst_id))
  goto nla_put_failure;

 if (match->info && match->info_len &&
     nla_put(msg, NL80211_NAN_FUNC_SERVICE_INFO, match->info_len,
      match->info))
  goto nla_put_failure;

 nla_nest_end(msg, peer_func_attr);
 nla_nest_end(msg, match_attr);
 genlmsg_end(msg, hdr);

 if (!wdev->owner_nlportid)
  genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy),
     msg, 0, NL80211_MCGRP_NAN, gfp);
 else
  genlmsg_unicast(wiphy_net(&rdev->wiphy), msg,
    wdev->owner_nlportid);

 return;

nla_put_failure:
 nlmsg_free(msg);
}
