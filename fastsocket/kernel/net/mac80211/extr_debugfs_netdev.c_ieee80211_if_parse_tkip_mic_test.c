
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {int mtx; TYPE_2__* associated; } ;
struct TYPE_11__ {TYPE_4__ mgd; } ;
struct TYPE_9__ {int type; int * addr; } ;
struct ieee80211_sub_if_data {TYPE_5__ u; TYPE_3__ vif; struct ieee80211_local* local; } ;
struct TYPE_7__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hdr {int frame_control; int addr3; int addr2; int addr1; } ;
typedef int ssize_t ;
typedef int __le16 ;
struct TYPE_12__ {int flags; } ;
struct TYPE_8__ {int * bssid; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_TODS ;
 int IEEE80211_FTYPE_DATA ;
 TYPE_6__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_STYPE_DATA ;
 int IEEE80211_TX_INTFL_TKIP_MIC_FAILURE ;


 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int mac_pton (char const*,int *) ;
 int memcpy (int ,int *,int) ;
 int memset (struct ieee80211_hdr*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_hdr* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static ssize_t ieee80211_if_parse_tkip_mic_test(
 struct ieee80211_sub_if_data *sdata, const char *buf, int buflen)
{
 struct ieee80211_local *local = sdata->local;
 u8 addr[ETH_ALEN];
 struct sk_buff *skb;
 struct ieee80211_hdr *hdr;
 __le16 fc;

 if (!mac_pton(buf, addr))
  return -EINVAL;

 if (!ieee80211_sdata_running(sdata))
  return -ENOTCONN;

 skb = dev_alloc_skb(local->hw.extra_tx_headroom + 24 + 100);
 if (!skb)
  return -ENOMEM;
 skb_reserve(skb, local->hw.extra_tx_headroom);

 hdr = (struct ieee80211_hdr *) skb_put(skb, 24);
 memset(hdr, 0, 24);
 fc = cpu_to_le16(IEEE80211_FTYPE_DATA | IEEE80211_STYPE_DATA);

 switch (sdata->vif.type) {
 case 129:
  fc |= cpu_to_le16(IEEE80211_FCTL_FROMDS);

  memcpy(hdr->addr1, addr, ETH_ALEN);
  memcpy(hdr->addr2, sdata->vif.addr, ETH_ALEN);
  memcpy(hdr->addr3, sdata->vif.addr, ETH_ALEN);
  break;
 case 128:
  fc |= cpu_to_le16(IEEE80211_FCTL_TODS);

  mutex_lock(&sdata->u.mgd.mtx);
  if (!sdata->u.mgd.associated) {
   mutex_unlock(&sdata->u.mgd.mtx);
   dev_kfree_skb(skb);
   return -ENOTCONN;
  }
  memcpy(hdr->addr1, sdata->u.mgd.associated->bssid, ETH_ALEN);
  memcpy(hdr->addr2, sdata->vif.addr, ETH_ALEN);
  memcpy(hdr->addr3, addr, ETH_ALEN);
  mutex_unlock(&sdata->u.mgd.mtx);
  break;
 default:
  dev_kfree_skb(skb);
  return -EOPNOTSUPP;
 }
 hdr->frame_control = fc;






 memset(skb_put(skb, 50), 0, 50);

 IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_INTFL_TKIP_MIC_FAILURE;

 ieee80211_tx_skb(sdata, skb);

 return buflen;
}
