
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int u8 ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_tim_ie {int dtim_count; scalar_t__ dtim_period; } ;
struct TYPE_20__ {int vht_supported; } ;
struct TYPE_19__ {int ht_supported; } ;
struct ieee80211_supported_band {TYPE_6__ vht_cap; TYPE_5__ ht_cap; } ;
struct TYPE_23__ {int sync_dtim_count; int sync_device_ts; int sync_tsf; } ;
struct TYPE_13__ {TYPE_9__ bss_conf; } ;
struct ieee80211_if_managed {char* bssid; int beacon_crc_valid; scalar_t__ req_smps; int mtx; struct ieee80211_mgd_assoc_data* assoc_data; scalar_t__ dtim_period; int flags; int mfp; scalar_t__ powersave; int vht_capa_mask; int vht_capa; int ht_capa_mask; int ht_capa; TYPE_2__* auth_data; scalar_t__ associated; } ;
struct TYPE_15__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {scalar_t__ smps_mode; int wmm_acm; TYPE_10__ vif; struct ieee80211_local* local; int control_port_no_encrypt; int control_port_protocol; int dev; TYPE_1__ u; } ;
struct ieee80211_mgd_assoc_data {int ssid_len; int ie_len; int wmm; int uapsd; int timeout_started; int need_beacon; int have_beacon; void* timeout; int * prev_bssid; int ap_vht_cap; int ap_ht_param; int supp_rates_len; int supp_rates; int capability; TYPE_11__* bss; int * ie; int * ssid; } ;
struct TYPE_22__ {scalar_t__ queues; int flags; TYPE_3__* wiphy; } ;
struct ieee80211_local {TYPE_8__ hw; } ;
struct ieee80211_ht_operation {int ht_param; } ;
struct ieee80211_bss {int corrupt_data; int device_ts_beacon; scalar_t__ uapsd_supported; scalar_t__ wmm_used; int supp_rates_len; int supp_rates; } ;
struct cfg80211_bss_ies {int tsf; int len; int data; } ;
struct TYPE_21__ {int n_ciphers_pairwise; scalar_t__* ciphers_pairwise; int control_port_no_encrypt; int control_port_ethertype; scalar_t__ control_port; } ;
struct cfg80211_assoc_request {int ie_len; int flags; int const ht_capa; int const ht_capa_mask; int const vht_capa; int const vht_capa_mask; int const* ie; int const* prev_bssid; TYPE_11__* bss; TYPE_7__ crypto; scalar_t__ use_mfp; } ;
typedef int frame_buf ;
struct TYPE_18__ {size_t band; } ;
struct TYPE_17__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_16__ {int done; } ;
struct TYPE_14__ {int beacon_interval; int beacon_ies; int capability; TYPE_4__* channel; int bssid; scalar_t__ priv; } ;


 int ASSOC_REQ_DISABLE_HT ;
 int ASSOC_REQ_DISABLE_VHT ;
 int BSS_CHANGED_BSSID ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_BSS_CORRUPT_BEACON ;
 int IEEE80211_BSS_CORRUPT_PROBE_RESP ;
 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_HW_NEED_DTIM_BEFORE_ASSOC ;
 int IEEE80211_HW_SUPPORTS_UAPSD ;
 int IEEE80211_HW_TIMING_BEACON_ONLY ;
 int IEEE80211_MFP_DISABLED ;
 int IEEE80211_MFP_REQUIRED ;
 scalar_t__ IEEE80211_NUM_ACS ;
 scalar_t__ IEEE80211_SMPS_AUTOMATIC ;
 scalar_t__ IEEE80211_SMPS_DYNAMIC ;
 scalar_t__ IEEE80211_SMPS_OFF ;
 int IEEE80211_STA_CONTROL_PORT ;
 int IEEE80211_STA_DISABLE_HT ;
 int IEEE80211_STA_DISABLE_VHT ;
 int IEEE80211_STA_MFP_ENABLED ;
 int IEEE80211_STA_UAPSD_ENABLED ;
 int IEEE80211_STYPE_DEAUTH ;
 void* TU_TO_EXP_TIME (int ) ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;
 int WLAN_EID_HT_OPERATION ;
 int WLAN_EID_SSID ;
 int WLAN_EID_TIM ;
 int WLAN_EID_VHT_CAPABILITY ;
 int WLAN_REASON_UNSPECIFIED ;
 int __cfg80211_send_deauth (int ,int*,int) ;
 int* cfg80211_find_ie (int ,int ,int ) ;
 int ether_addr_equal (char*,int ) ;
 int* ieee80211_bss_get_ie (TYPE_11__*,int ) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_destroy_auth_data (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_prep_connection (struct ieee80211_sub_if_data*,TYPE_11__*,int) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int*) ;
 void* jiffies ;
 int kfree (struct ieee80211_mgd_assoc_data*) ;
 struct ieee80211_mgd_assoc_data* kzalloc (int,int ) ;
 int memcpy (int *,int const*,int const) ;
 int memset (char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_info (int ,char*) ;
 struct cfg80211_bss_ies* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int run_again (struct ieee80211_if_managed*,void*) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,char*) ;

int ieee80211_mgd_assoc(struct ieee80211_sub_if_data *sdata,
   struct cfg80211_assoc_request *req)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_bss *bss = (void *)req->bss->priv;
 struct ieee80211_mgd_assoc_data *assoc_data;
 const struct cfg80211_bss_ies *beacon_ies;
 struct ieee80211_supported_band *sband;
 const u8 *ssidie, *ht_ie, *vht_ie;
 int i, err;

 assoc_data = kzalloc(sizeof(*assoc_data) + req->ie_len, GFP_KERNEL);
 if (!assoc_data)
  return -ENOMEM;

 rcu_read_lock();
 ssidie = ieee80211_bss_get_ie(req->bss, WLAN_EID_SSID);
 if (!ssidie) {
  rcu_read_unlock();
  kfree(assoc_data);
  return -EINVAL;
 }
 memcpy(assoc_data->ssid, ssidie + 2, ssidie[1]);
 assoc_data->ssid_len = ssidie[1];
 rcu_read_unlock();

 mutex_lock(&ifmgd->mtx);

 if (ifmgd->associated) {
  u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];

  ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DEAUTH,
           WLAN_REASON_UNSPECIFIED,
           0, frame_buf);

  __cfg80211_send_deauth(sdata->dev, frame_buf,
           sizeof(frame_buf));
 }

 if (ifmgd->auth_data && !ifmgd->auth_data->done) {
  err = -EBUSY;
  goto err_free;
 }

 if (ifmgd->assoc_data) {
  err = -EBUSY;
  goto err_free;
 }

 if (ifmgd->auth_data) {
  bool match;


  match = ether_addr_equal(ifmgd->bssid, req->bss->bssid);
  ieee80211_destroy_auth_data(sdata, match);
 }



 ifmgd->beacon_crc_valid = 0;
 for (i = 0; i < req->crypto.n_ciphers_pairwise; i++) {
  if (req->crypto.ciphers_pairwise[i] == WLAN_CIPHER_SUITE_WEP40 ||
      req->crypto.ciphers_pairwise[i] == WLAN_CIPHER_SUITE_TKIP ||
      req->crypto.ciphers_pairwise[i] == WLAN_CIPHER_SUITE_WEP104) {
   ifmgd->flags |= IEEE80211_STA_DISABLE_HT;
   ifmgd->flags |= IEEE80211_STA_DISABLE_VHT;
   netdev_info(sdata->dev,
        "disabling HT/VHT due to WEP/TKIP use\n");
  }
 }

 if (req->flags & ASSOC_REQ_DISABLE_HT) {
  ifmgd->flags |= IEEE80211_STA_DISABLE_HT;
  ifmgd->flags |= IEEE80211_STA_DISABLE_VHT;
 }

 if (req->flags & ASSOC_REQ_DISABLE_VHT)
  ifmgd->flags |= IEEE80211_STA_DISABLE_VHT;


 sband = local->hw.wiphy->bands[req->bss->channel->band];
 if (!sband->ht_cap.ht_supported ||
     local->hw.queues < IEEE80211_NUM_ACS || !bss->wmm_used) {
  ifmgd->flags |= IEEE80211_STA_DISABLE_HT;
  if (!bss->wmm_used)
   netdev_info(sdata->dev,
        "disabling HT as WMM/QoS is not supported by the AP\n");
 }


 if (!sband->vht_cap.vht_supported ||
     local->hw.queues < IEEE80211_NUM_ACS || !bss->wmm_used) {
  ifmgd->flags |= IEEE80211_STA_DISABLE_VHT;
  if (!bss->wmm_used)
   netdev_info(sdata->dev,
        "disabling VHT as WMM/QoS is not supported by the AP\n");
 }

 memcpy(&ifmgd->ht_capa, &req->ht_capa, sizeof(ifmgd->ht_capa));
 memcpy(&ifmgd->ht_capa_mask, &req->ht_capa_mask,
        sizeof(ifmgd->ht_capa_mask));

 memcpy(&ifmgd->vht_capa, &req->vht_capa, sizeof(ifmgd->vht_capa));
 memcpy(&ifmgd->vht_capa_mask, &req->vht_capa_mask,
        sizeof(ifmgd->vht_capa_mask));

 if (req->ie && req->ie_len) {
  memcpy(assoc_data->ie, req->ie, req->ie_len);
  assoc_data->ie_len = req->ie_len;
 }

 assoc_data->bss = req->bss;

 if (ifmgd->req_smps == IEEE80211_SMPS_AUTOMATIC) {
  if (ifmgd->powersave)
   sdata->smps_mode = IEEE80211_SMPS_DYNAMIC;
  else
   sdata->smps_mode = IEEE80211_SMPS_OFF;
 } else
  sdata->smps_mode = ifmgd->req_smps;

 assoc_data->capability = req->bss->capability;
 assoc_data->wmm = bss->wmm_used &&
     (local->hw.queues >= IEEE80211_NUM_ACS);
 assoc_data->supp_rates = bss->supp_rates;
 assoc_data->supp_rates_len = bss->supp_rates_len;

 rcu_read_lock();
 ht_ie = ieee80211_bss_get_ie(req->bss, WLAN_EID_HT_OPERATION);
 if (ht_ie && ht_ie[1] >= sizeof(struct ieee80211_ht_operation))
  assoc_data->ap_ht_param =
   ((struct ieee80211_ht_operation *)(ht_ie + 2))->ht_param;
 else
  ifmgd->flags |= IEEE80211_STA_DISABLE_HT;
 vht_ie = ieee80211_bss_get_ie(req->bss, WLAN_EID_VHT_CAPABILITY);
 if (vht_ie && vht_ie[1] >= sizeof(struct ieee80211_vht_cap))
  memcpy(&assoc_data->ap_vht_cap, vht_ie + 2,
         sizeof(struct ieee80211_vht_cap));
 else
  ifmgd->flags |= IEEE80211_STA_DISABLE_VHT;
 rcu_read_unlock();

 if (bss->wmm_used && bss->uapsd_supported &&
     (sdata->local->hw.flags & IEEE80211_HW_SUPPORTS_UAPSD) &&
     sdata->wmm_acm != 0xff) {
  assoc_data->uapsd = 1;
  ifmgd->flags |= IEEE80211_STA_UAPSD_ENABLED;
 } else {
  assoc_data->uapsd = 0;
  ifmgd->flags &= ~IEEE80211_STA_UAPSD_ENABLED;
 }

 if (req->prev_bssid)
  memcpy(assoc_data->prev_bssid, req->prev_bssid, ETH_ALEN);

 if (req->use_mfp) {
  ifmgd->mfp = IEEE80211_MFP_REQUIRED;
  ifmgd->flags |= IEEE80211_STA_MFP_ENABLED;
 } else {
  ifmgd->mfp = IEEE80211_MFP_DISABLED;
  ifmgd->flags &= ~IEEE80211_STA_MFP_ENABLED;
 }

 if (req->crypto.control_port)
  ifmgd->flags |= IEEE80211_STA_CONTROL_PORT;
 else
  ifmgd->flags &= ~IEEE80211_STA_CONTROL_PORT;

 sdata->control_port_protocol = req->crypto.control_port_ethertype;
 sdata->control_port_no_encrypt = req->crypto.control_port_no_encrypt;



 ifmgd->assoc_data = assoc_data;
 ifmgd->dtim_period = 0;

 err = ieee80211_prep_connection(sdata, req->bss, 1);
 if (err)
  goto err_clear;

 rcu_read_lock();
 beacon_ies = rcu_dereference(req->bss->beacon_ies);

 if (sdata->local->hw.flags & IEEE80211_HW_NEED_DTIM_BEFORE_ASSOC &&
     !beacon_ies) {




  sdata_info(sdata, "waiting for beacon from %pM\n",
      ifmgd->bssid);
  assoc_data->timeout = TU_TO_EXP_TIME(req->bss->beacon_interval);
  assoc_data->timeout_started = 1;
  assoc_data->need_beacon = 1;
 } else if (beacon_ies) {
  const u8 *tim_ie = cfg80211_find_ie(WLAN_EID_TIM,
          beacon_ies->data,
          beacon_ies->len);
  u8 dtim_count = 0;

  if (tim_ie && tim_ie[1] >= sizeof(struct ieee80211_tim_ie)) {
   const struct ieee80211_tim_ie *tim;
   tim = (void *)(tim_ie + 2);
   ifmgd->dtim_period = tim->dtim_period;
   dtim_count = tim->dtim_count;
  }
  assoc_data->have_beacon = 1;
  assoc_data->timeout = jiffies;
  assoc_data->timeout_started = 1;

  if (local->hw.flags & IEEE80211_HW_TIMING_BEACON_ONLY) {
   sdata->vif.bss_conf.sync_tsf = beacon_ies->tsf;
   sdata->vif.bss_conf.sync_device_ts =
    bss->device_ts_beacon;
   sdata->vif.bss_conf.sync_dtim_count = dtim_count;
  }
 } else {
  assoc_data->timeout = jiffies;
  assoc_data->timeout_started = 1;
 }
 rcu_read_unlock();

 run_again(ifmgd, assoc_data->timeout);

 if (bss->corrupt_data) {
  char *corrupt_type = "data";
  if (bss->corrupt_data & IEEE80211_BSS_CORRUPT_BEACON) {
   if (bss->corrupt_data &
     IEEE80211_BSS_CORRUPT_PROBE_RESP)
    corrupt_type = "beacon and probe response";
   else
    corrupt_type = "beacon";
  } else if (bss->corrupt_data & IEEE80211_BSS_CORRUPT_PROBE_RESP)
   corrupt_type = "probe response";
  sdata_info(sdata, "associating with AP with corrupt %s\n",
      corrupt_type);
 }

 err = 0;
 goto out;
 err_clear:
 memset(ifmgd->bssid, 0, ETH_ALEN);
 ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_BSSID);
 ifmgd->assoc_data = ((void*)0);
 err_free:
 kfree(assoc_data);
 out:
 mutex_unlock(&ifmgd->mtx);

 return err;
}
