
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wireless_dev {TYPE_2__* current_bss; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_disassoc_request {int local_state_change; int ie_len; TYPE_1__* bss; int const* ie; int reason_code; } ;
struct TYPE_3__ {int bssid; } ;
struct TYPE_4__ {TYPE_1__ pub; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int ENOTCONN ;
 int WARN_ON (TYPE_2__*) ;
 scalar_t__ ether_addr_equal (int ,int const*) ;
 int rdev_disassoc (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_disassoc_request*) ;

int cfg80211_mlme_disassoc(struct cfg80211_registered_device *rdev,
      struct net_device *dev, const u8 *bssid,
      const u8 *ie, int ie_len, u16 reason,
      bool local_state_change)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_disassoc_request req = {
  .reason_code = reason,
  .local_state_change = local_state_change,
  .ie = ie,
  .ie_len = ie_len,
 };
 int err;

 ASSERT_WDEV_LOCK(wdev);

 if (!wdev->current_bss)
  return -ENOTCONN;

 if (ether_addr_equal(wdev->current_bss->pub.bssid, bssid))
  req.bss = &wdev->current_bss->pub;
 else
  return -ENOTCONN;

 err = rdev_disassoc(rdev, dev, &req);
 if (err)
  return err;


 WARN_ON(wdev->current_bss);
 return 0;
}
