
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct cfg80211_bitrate_mask {TYPE_2__* control; } ;
struct ath10k_vif {int vht_num_rates; int vdev_id; scalar_t__ vht_pfr; struct cfg80211_bitrate_mask bitrate_mask; struct ath10k* ar; } ;
struct TYPE_7__ {int fw_features; } ;
struct TYPE_8__ {TYPE_3__ fw_file; } ;
struct ath10k {int ht_cap_info; int conf_mutex; int hw; int num_rf_chains; TYPE_4__ normal_mode_fw; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_6__ {scalar_t__* ht_mcs; scalar_t__ gi; int * vht_mcs; } ;
struct TYPE_5__ {int band; } ;


 int ATH10K_FW_FEATURE_PEER_FIXED_RATE ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ NL80211_TXRATE_FORCE_LGI ;
 scalar_t__ WMI_FIXED_RATE_NONE ;
 int WMI_HT_CAP_LDPC ;
 scalar_t__ ath10k_mac_bitrate_mask_get_single_nss (struct ath10k*,int,struct cfg80211_bitrate_mask const*,int*) ;
 int ath10k_mac_bitrate_mask_get_single_rate (struct ath10k*,int,struct cfg80211_bitrate_mask const*,scalar_t__*,scalar_t__*,int) ;
 scalar_t__ ath10k_mac_bitrate_mask_has_single_rate (struct ath10k*,int,struct cfg80211_bitrate_mask const*,int*) ;
 int ath10k_mac_can_set_bitrate_mask (struct ath10k*,int,struct cfg80211_bitrate_mask const*,int) ;
 int ath10k_mac_clr_bitrate_mask_iter ;
 int ath10k_mac_max_ht_nss (scalar_t__ const*) ;
 int ath10k_mac_max_vht_nss (int const*) ;
 int ath10k_mac_set_bitrate_mask_iter ;
 int ath10k_mac_set_fixed_rate_params (struct ath10k_vif*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ ath10k_mac_vif_chan (struct ieee80211_vif*,struct cfg80211_chan_def*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ieee80211_iterate_stations_atomic (int ,int ,struct ath10k_vif*) ;
 int max (int ,int ) ;
 scalar_t__ min (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ath10k_mac_op_set_bitrate_mask(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       const struct cfg80211_bitrate_mask *mask)
{
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct cfg80211_chan_def def;
 struct ath10k *ar = arvif->ar;
 enum nl80211_band band;
 const u8 *ht_mcs_mask;
 const u16 *vht_mcs_mask;
 u8 rate;
 u8 nss;
 u8 sgi;
 u8 ldpc;
 int single_nss;
 int ret;
 int vht_num_rates, allow_pfr;
 u8 vht_pfr;
 bool update_bitrate_mask = 1;

 if (ath10k_mac_vif_chan(vif, &def))
  return -EPERM;

 band = def.chan->band;
 ht_mcs_mask = mask->control[band].ht_mcs;
 vht_mcs_mask = mask->control[band].vht_mcs;
 ldpc = !!(ar->ht_cap_info & WMI_HT_CAP_LDPC);

 sgi = mask->control[band].gi;
 if (sgi == NL80211_TXRATE_FORCE_LGI)
  return -EINVAL;

 allow_pfr = test_bit(ATH10K_FW_FEATURE_PEER_FIXED_RATE,
        ar->normal_mode_fw.fw_file.fw_features);
 if (allow_pfr) {
  mutex_lock(&ar->conf_mutex);
  ieee80211_iterate_stations_atomic(ar->hw,
        ath10k_mac_clr_bitrate_mask_iter,
        arvif);
  mutex_unlock(&ar->conf_mutex);
 }

 if (ath10k_mac_bitrate_mask_has_single_rate(ar, band, mask,
          &vht_num_rates)) {
  ret = ath10k_mac_bitrate_mask_get_single_rate(ar, band, mask,
             &rate, &nss,
             0);
  if (ret) {
   ath10k_warn(ar, "failed to get single rate for vdev %i: %d\n",
        arvif->vdev_id, ret);
   return ret;
  }
 } else if (ath10k_mac_bitrate_mask_get_single_nss(ar, band, mask,
         &single_nss)) {
  rate = WMI_FIXED_RATE_NONE;
  nss = single_nss;
 } else {
  rate = WMI_FIXED_RATE_NONE;
  nss = min(ar->num_rf_chains,
     max(ath10k_mac_max_ht_nss(ht_mcs_mask),
         ath10k_mac_max_vht_nss(vht_mcs_mask)));

  if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
           allow_pfr)) {
   u8 vht_nss;

   if (!allow_pfr || vht_num_rates != 1)
    return -EINVAL;





   ath10k_mac_bitrate_mask_get_single_rate(ar, band, mask,
        &vht_pfr,
        &vht_nss,
        1);
   update_bitrate_mask = 0;
  } else {
   vht_pfr = 0;
  }

  mutex_lock(&ar->conf_mutex);

  if (update_bitrate_mask)
   arvif->bitrate_mask = *mask;
  arvif->vht_num_rates = vht_num_rates;
  arvif->vht_pfr = vht_pfr;
  ieee80211_iterate_stations_atomic(ar->hw,
        ath10k_mac_set_bitrate_mask_iter,
        arvif);

  mutex_unlock(&ar->conf_mutex);
 }

 mutex_lock(&ar->conf_mutex);

 ret = ath10k_mac_set_fixed_rate_params(arvif, rate, nss, sgi, ldpc);
 if (ret) {
  ath10k_warn(ar, "failed to set fixed rate params on vdev %i: %d\n",
       arvif->vdev_id, ret);
  goto exit;
 }

exit:
 mutex_unlock(&ar->conf_mutex);

 return ret;
}
