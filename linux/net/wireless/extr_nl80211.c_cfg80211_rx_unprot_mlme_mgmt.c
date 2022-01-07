
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_mgmt {int frame_control; } ;
struct cfg80211_registered_device {int dummy; } ;


 int GFP_ATOMIC ;
 int NL80211_CMD_UNPROT_DEAUTHENTICATE ;
 int NL80211_CMD_UNPROT_DISASSOCIATE ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ ieee80211_is_deauth (int ) ;
 int nl80211_send_mlme_event (struct cfg80211_registered_device*,struct net_device*,int const*,size_t,int ,int ,int,int *,int ) ;
 int trace_cfg80211_rx_unprot_mlme_mgmt (struct net_device*,int const*,size_t) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_rx_unprot_mlme_mgmt(struct net_device *dev, const u8 *buf,
      size_t len)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 const struct ieee80211_mgmt *mgmt = (void *)buf;
 u32 cmd;

 if (WARN_ON(len < 2))
  return;

 if (ieee80211_is_deauth(mgmt->frame_control))
  cmd = NL80211_CMD_UNPROT_DEAUTHENTICATE;
 else
  cmd = NL80211_CMD_UNPROT_DISASSOCIATE;

 trace_cfg80211_rx_unprot_mlme_mgmt(dev, buf, len);
 nl80211_send_mlme_event(rdev, dev, buf, len, cmd, GFP_ATOMIC, -1,
    ((void*)0), 0);
}
