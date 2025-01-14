
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usb; } ;
struct zd_mac {TYPE_1__ chip; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {struct ieee80211_hw** rate_driver_data; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int fill_ctrlset (struct zd_mac*,struct sk_buff*) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;
 int zd_usb_tx (int *,struct sk_buff*) ;

__attribute__((used)) static void zd_op_tx(struct ieee80211_hw *hw,
       struct ieee80211_tx_control *control,
       struct sk_buff *skb)
{
 struct zd_mac *mac = zd_hw_mac(hw);
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 int r;

 r = fill_ctrlset(mac, skb);
 if (r)
  goto fail;

 info->rate_driver_data[0] = hw;

 r = zd_usb_tx(&mac->chip.usb, skb);
 if (r)
  goto fail;
 return;

fail:
 dev_kfree_skb(skb);
}
