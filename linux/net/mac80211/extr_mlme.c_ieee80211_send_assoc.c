
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_supported_band {int n_bitrates; int n_channels; scalar_t__ band; TYPE_9__* channels; TYPE_8__* bitrates; } ;
struct TYPE_15__ {scalar_t__ addr; int chanctx_conf; } ;
struct ieee80211_if_managed {int flags; int uapsd_queues; int uapsd_max_sp_len; int assoc_req_ies_len; int assoc_req_ies; struct ieee80211_mgd_assoc_data* assoc_data; } ;
struct TYPE_19__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int smps_mode; TYPE_10__ vif; TYPE_1__ u; struct ieee80211_local* local; } ;
struct TYPE_23__ {void* listen_interval; void* capab_info; } ;
struct TYPE_22__ {int* current_ap; void* listen_interval; void* capab_info; } ;
struct TYPE_24__ {TYPE_5__ assoc_req; TYPE_4__ reassoc_req; } ;
struct ieee80211_mgmt {int* da; int* sa; int* bssid; TYPE_6__ u; void* frame_control; } ;
struct ieee80211_mgd_assoc_data {int ssid_len; size_t ie_len; int capability; scalar_t__ fils_kek_len; scalar_t__ ie; scalar_t__ uapsd; scalar_t__ wmm; int ap_vht_cap; int ap_ht_param; scalar_t__ ssid; scalar_t__ prev_bssid; TYPE_3__* bss; scalar_t__ supp_rates_len; int supp_rates; } ;
struct TYPE_25__ {int listen_interval; } ;
struct TYPE_17__ {TYPE_7__ conf; scalar_t__ extra_tx_headroom; TYPE_2__* wiphy; } ;
struct ieee80211_local {TYPE_12__ hw; } ;
struct ieee80211_ht_cap {int dummy; } ;
struct ieee80211_he_mcs_nss_supp {int dummy; } ;
struct ieee80211_he_cap_elem {int dummy; } ;
struct ieee80211_channel {size_t band; } ;
struct TYPE_16__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_11__ def; } ;
struct element {int datalen; int * data; } ;
struct TYPE_27__ {int center_freq; } ;
struct TYPE_26__ {int bitrate; } ;
struct TYPE_21__ {scalar_t__ bssid; } ;
struct TYPE_20__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_18__ {int flags; } ;


 int ARRAY_SIZE (int const*) ;
 int BIT (int) ;
 int DIV_ROUND_UP (int ,int) ;
 size_t ETH_ALEN ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int IEEE80211_FTYPE_MGMT ;
 scalar_t__ IEEE80211_HE_PPE_THRES_MAX_LEN ;
 TYPE_14__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_STA_DISABLE_HE ;
 int IEEE80211_STA_DISABLE_HT ;
 int IEEE80211_STA_DISABLE_VHT ;
 int IEEE80211_STA_ENABLE_RRM ;
 int IEEE80211_STYPE_ASSOC_REQ ;
 int IEEE80211_STYPE_REASSOC_REQ ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ;
 int IEEE80211_TX_INTFL_MLME_CONN_TX ;
 int IEEE80211_WMM_IE_STA_QOSINFO_SP_SHIFT ;
 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int REPORTS_TX_ACK_STATUS ;
 int SPECTRUM_MGMT ;
 int SUPPORTS_ONLY_HE_MULTI_BSSID ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WLAN_CAPABILITY_ESS ;
 int WLAN_CAPABILITY_PRIVACY ;
 int WLAN_CAPABILITY_RADIO_MEASURE ;
 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 int WLAN_CAPABILITY_SHORT_SLOT_TIME ;
 int WLAN_CAPABILITY_SPECTRUM_MGMT ;
 int WLAN_EXT_CAPA3_MULTI_BSSID_SUPPORT ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 scalar_t__ cfg80211_find_elem (int const,scalar_t__,size_t) ;
 void* cpu_to_le16 (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int drv_mgd_prepare_tx (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 scalar_t__ fils_encrypt_assoc_req (struct sk_buff*,struct ieee80211_mgd_assoc_data*) ;
 int ieee80211_add_he_ie (struct ieee80211_sub_if_data*,struct sk_buff*,struct ieee80211_supported_band*) ;
 int ieee80211_add_ht_ie (struct ieee80211_sub_if_data*,struct sk_buff*,int ,struct ieee80211_supported_band*,struct ieee80211_channel*,int ) ;
 int ieee80211_add_vht_ie (struct ieee80211_sub_if_data*,struct sk_buff*,struct ieee80211_supported_band*,int *) ;
 int* ieee80211_add_wmm_info_ie (int*,int) ;
 int ieee80211_chandef_max_power (TYPE_11__*) ;
 int ieee80211_frequency_to_channel (int ) ;
 scalar_t__ ieee80211_hw_check (TYPE_12__*,int ) ;
 size_t ieee80211_ie_split (scalar_t__,size_t,int const*,int ,size_t) ;
 size_t ieee80211_ie_split_ric (scalar_t__,size_t,int const*,int ,int const*,int ,size_t) ;
 size_t ieee80211_ie_split_vendor (scalar_t__,size_t,size_t) ;
 int ieee80211_parse_bitrates (TYPE_11__*,struct ieee80211_supported_band*,int ,scalar_t__,int*) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int ieee80211_vif_get_shift (TYPE_10__*) ;
 int is_zero_ether_addr (scalar_t__) ;
 int kfree (int ) ;
 int kmemdup (int*,int,int ) ;
 int memcpy (int*,scalar_t__,size_t) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 int* skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,scalar_t__,size_t) ;
 struct ieee80211_mgmt* skb_put_zero (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static void ieee80211_send_assoc(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_mgd_assoc_data *assoc_data = ifmgd->assoc_data;
 struct sk_buff *skb;
 struct ieee80211_mgmt *mgmt;
 u8 *pos, qos_info, *ie_start;
 size_t offset = 0, noffset;
 int i, count, rates_len, supp_rates_len, shift;
 u16 capab;
 struct ieee80211_supported_band *sband;
 struct ieee80211_chanctx_conf *chanctx_conf;
 struct ieee80211_channel *chan;
 u32 rates = 0;

 sdata_assert_lock(sdata);

 rcu_read_lock();
 chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);
 if (WARN_ON(!chanctx_conf)) {
  rcu_read_unlock();
  return;
 }
 chan = chanctx_conf->def.chan;
 rcu_read_unlock();
 sband = local->hw.wiphy->bands[chan->band];
 shift = ieee80211_vif_get_shift(&sdata->vif);

 if (assoc_data->supp_rates_len) {






  rates_len = ieee80211_parse_bitrates(&chanctx_conf->def, sband,
           assoc_data->supp_rates,
           assoc_data->supp_rates_len,
           &rates);
 } else {





  rates_len = 0;
  for (i = 0; i < sband->n_bitrates; i++) {
   rates |= BIT(i);
   rates_len++;
  }
 }

 skb = alloc_skb(local->hw.extra_tx_headroom +
   sizeof(*mgmt) +
   2 + assoc_data->ssid_len +
   4 + rates_len +
   4 +
   2 + 2 * sband->n_channels +
   2 + sizeof(struct ieee80211_ht_cap) +
   2 + sizeof(struct ieee80211_vht_cap) +
   2 + 1 + sizeof(struct ieee80211_he_cap_elem) +
    sizeof(struct ieee80211_he_mcs_nss_supp) +
    IEEE80211_HE_PPE_THRES_MAX_LEN +
   assoc_data->ie_len +
   (assoc_data->fils_kek_len ? 16 : 0) +
   9,
   GFP_KERNEL);
 if (!skb)
  return;

 skb_reserve(skb, local->hw.extra_tx_headroom);

 capab = WLAN_CAPABILITY_ESS;

 if (sband->band == NL80211_BAND_2GHZ) {
  capab |= WLAN_CAPABILITY_SHORT_SLOT_TIME;
  capab |= WLAN_CAPABILITY_SHORT_PREAMBLE;
 }

 if (assoc_data->capability & WLAN_CAPABILITY_PRIVACY)
  capab |= WLAN_CAPABILITY_PRIVACY;

 if ((assoc_data->capability & WLAN_CAPABILITY_SPECTRUM_MGMT) &&
     ieee80211_hw_check(&local->hw, SPECTRUM_MGMT))
  capab |= WLAN_CAPABILITY_SPECTRUM_MGMT;

 if (ifmgd->flags & IEEE80211_STA_ENABLE_RRM)
  capab |= WLAN_CAPABILITY_RADIO_MEASURE;

 mgmt = skb_put_zero(skb, 24);
 memcpy(mgmt->da, assoc_data->bss->bssid, ETH_ALEN);
 memcpy(mgmt->sa, sdata->vif.addr, ETH_ALEN);
 memcpy(mgmt->bssid, assoc_data->bss->bssid, ETH_ALEN);

 if (!is_zero_ether_addr(assoc_data->prev_bssid)) {
  skb_put(skb, 10);
  mgmt->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
        IEEE80211_STYPE_REASSOC_REQ);
  mgmt->u.reassoc_req.capab_info = cpu_to_le16(capab);
  mgmt->u.reassoc_req.listen_interval =
    cpu_to_le16(local->hw.conf.listen_interval);
  memcpy(mgmt->u.reassoc_req.current_ap, assoc_data->prev_bssid,
         ETH_ALEN);
 } else {
  skb_put(skb, 4);
  mgmt->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
        IEEE80211_STYPE_ASSOC_REQ);
  mgmt->u.assoc_req.capab_info = cpu_to_le16(capab);
  mgmt->u.assoc_req.listen_interval =
    cpu_to_le16(local->hw.conf.listen_interval);
 }


 pos = skb_put(skb, 2 + assoc_data->ssid_len);
 ie_start = pos;
 *pos++ = 133;
 *pos++ = assoc_data->ssid_len;
 memcpy(pos, assoc_data->ssid, assoc_data->ssid_len);


 supp_rates_len = rates_len;
 if (supp_rates_len > 8)
  supp_rates_len = 8;

 pos = skb_put(skb, supp_rates_len + 2);
 *pos++ = 130;
 *pos++ = supp_rates_len;

 count = 0;
 for (i = 0; i < sband->n_bitrates; i++) {
  if (BIT(i) & rates) {
   int rate = DIV_ROUND_UP(sband->bitrates[i].bitrate,
      5 * (1 << shift));
   *pos++ = (u8) rate;
   if (++count == 8)
    break;
  }
 }

 if (rates_len > count) {
  pos = skb_put(skb, rates_len - count + 2);
  *pos++ = 145;
  *pos++ = rates_len - count;

  for (i++; i < sband->n_bitrates; i++) {
   if (BIT(i) & rates) {
    int rate;
    rate = DIV_ROUND_UP(sband->bitrates[i].bitrate,
          5 * (1 << shift));
    *pos++ = (u8) rate;
   }
  }
 }

 if (capab & WLAN_CAPABILITY_SPECTRUM_MGMT ||
     capab & WLAN_CAPABILITY_RADIO_MEASURE) {
  pos = skb_put(skb, 4);
  *pos++ = 139;
  *pos++ = 2;
  *pos++ = 0;

  *pos++ = ieee80211_chandef_max_power(&chanctx_conf->def);
 }

 if (capab & WLAN_CAPABILITY_SPECTRUM_MGMT) {

  pos = skb_put(skb, 2 * sband->n_channels + 2);
  *pos++ = 132;
  *pos++ = 2 * sband->n_channels;
  for (i = 0; i < sband->n_channels; i++) {
   *pos++ = ieee80211_frequency_to_channel(
     sband->channels[i].center_freq);
   *pos++ = 1;
  }
 }


 if (ieee80211_hw_check(&local->hw, SUPPORTS_ONLY_HE_MULTI_BSSID) &&
     !(ifmgd->flags & IEEE80211_STA_DISABLE_HE) && assoc_data->ie_len) {
  struct element *elem;


  elem = (void *)cfg80211_find_elem(152,
        assoc_data->ie,
        assoc_data->ie_len);


  if (elem && elem->datalen >= 3)
   elem->data[2] |= WLAN_EXT_CAPA3_MULTI_BSSID_SUPPORT;
 }


 if (assoc_data->ie_len) {
  static const u8 before_ht[] = {
   133,
   130,
   145,
   139,
   132,
   134,
   138,
   135,
   141,
   144,
   136,
   131,
  };
  static const u8 after_ric[] = {
   131,
   143,
   154,

   152,
   137,
   129,
   142,

   128,
   140,
  };

  noffset = ieee80211_ie_split_ric(assoc_data->ie,
       assoc_data->ie_len,
       before_ht,
       ARRAY_SIZE(before_ht),
       after_ric,
       ARRAY_SIZE(after_ric),
       offset);
  skb_put_data(skb, assoc_data->ie + offset, noffset - offset);
  offset = noffset;
 }

 if (WARN_ON_ONCE((ifmgd->flags & IEEE80211_STA_DISABLE_HT) &&
    !(ifmgd->flags & IEEE80211_STA_DISABLE_VHT)))
  ifmgd->flags |= IEEE80211_STA_DISABLE_VHT;

 if (!(ifmgd->flags & IEEE80211_STA_DISABLE_HT))
  ieee80211_add_ht_ie(sdata, skb, assoc_data->ap_ht_param,
        sband, chan, sdata->smps_mode);


 if (assoc_data->ie_len) {
  static const u8 before_vht[] = {




   154,
   152,
   137,
   129,
   142,

  };


  noffset = ieee80211_ie_split(assoc_data->ie, assoc_data->ie_len,
          before_vht, ARRAY_SIZE(before_vht),
          offset);
  skb_put_data(skb, assoc_data->ie + offset, noffset - offset);
  offset = noffset;
 }


 if (assoc_data->ie_len) {
  static const u8 before_he[] = {




   140,
   153, 146,

   153, 147,
   153, 148,
   153, 149,
   153, 151,
   153, 150,

  };


  noffset = ieee80211_ie_split(assoc_data->ie, assoc_data->ie_len,
          before_he, ARRAY_SIZE(before_he),
          offset);
  pos = skb_put(skb, noffset - offset);
  memcpy(pos, assoc_data->ie + offset, noffset - offset);
  offset = noffset;
 }

 if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
  ieee80211_add_vht_ie(sdata, skb, sband,
         &assoc_data->ap_vht_cap);





 if (ifmgd->flags & IEEE80211_STA_DISABLE_HT ||
     (sband->band == NL80211_BAND_5GHZ &&
      ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
  ifmgd->flags |= IEEE80211_STA_DISABLE_HE;

 if (!(ifmgd->flags & IEEE80211_STA_DISABLE_HE))
  ieee80211_add_he_ie(sdata, skb, sband);


 if (assoc_data->ie_len) {
  noffset = ieee80211_ie_split_vendor(assoc_data->ie,
          assoc_data->ie_len,
          offset);
  skb_put_data(skb, assoc_data->ie + offset, noffset - offset);
  offset = noffset;
 }

 if (assoc_data->wmm) {
  if (assoc_data->uapsd) {
   qos_info = ifmgd->uapsd_queues;
   qos_info |= (ifmgd->uapsd_max_sp_len <<
         IEEE80211_WMM_IE_STA_QOSINFO_SP_SHIFT);
  } else {
   qos_info = 0;
  }

  pos = ieee80211_add_wmm_info_ie(skb_put(skb, 9), qos_info);
 }


 if (assoc_data->ie_len) {
  noffset = assoc_data->ie_len;
  skb_put_data(skb, assoc_data->ie + offset, noffset - offset);
 }

 if (assoc_data->fils_kek_len &&
     fils_encrypt_assoc_req(skb, assoc_data) < 0) {
  dev_kfree_skb(skb);
  return;
 }

 pos = skb_tail_pointer(skb);
 kfree(ifmgd->assoc_req_ies);
 ifmgd->assoc_req_ies = kmemdup(ie_start, pos - ie_start, GFP_ATOMIC);
 ifmgd->assoc_req_ies_len = pos - ie_start;

 drv_mgd_prepare_tx(local, sdata, 0);

 IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT;
 if (ieee80211_hw_check(&local->hw, REPORTS_TX_ACK_STATUS))
  IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_CTL_REQ_TX_STATUS |
      IEEE80211_TX_INTFL_MLME_CONN_TX;
 ieee80211_tx_skb(sdata, skb);
}
