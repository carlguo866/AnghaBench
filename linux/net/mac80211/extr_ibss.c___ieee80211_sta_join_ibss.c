
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_9__ {int ibss_joined; int ibss_creator; int enable_beacon; int beacon_int; int basic_rates; int use_short_slot; scalar_t__ ssid_len; int ssid; } ;
struct TYPE_10__ {TYPE_4__ bss_conf; } ;
struct TYPE_7__ {int mtx; } ;
struct ieee80211_if_ibss {int bssid; int timer; int state; int presp; scalar_t__ ssid_len; int const* ssid; scalar_t__ fixed_channel; int userspace_handles_dfs; } ;
struct TYPE_6__ {struct ieee80211_if_ibss ibss; } ;
struct ieee80211_sub_if_data {int radar_required; int dev; TYPE_5__ vif; int flags; struct ieee80211_local* local; TYPE_2__ wdev; TYPE_1__ u; } ;
struct ieee80211_mgmt {int dummy; } ;
struct TYPE_8__ {int wiphy; } ;
struct ieee80211_local {TYPE_3__ hw; int mtx; } ;
struct ieee80211_channel {scalar_t__ band; int center_freq; } ;
struct cfg80211_inform_bss {int scan_width; struct ieee80211_channel* chan; } ;
struct cfg80211_chan_def {scalar_t__ width; int center_freq1; struct ieee80211_channel* chan; } ;
struct cfg80211_bss {int dummy; } ;
struct beacon_data {int head_len; scalar_t__ head; } ;


 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_ERP_SLOT ;
 int BSS_CHANGED_HT ;
 int BSS_CHANGED_IBSS ;
 int BSS_CHANGED_SSID ;
 scalar_t__ ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_CHANCTX_EXCLUSIVE ;
 int IEEE80211_CHANCTX_SHARED ;
 scalar_t__ IEEE80211_IBSS_MERGE_INTERVAL ;
 int IEEE80211_IBSS_MLME_JOINED ;
 int IEEE80211_SDATA_OPERATING_GMODE ;
 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ NL80211_CHAN_WIDTH_10 ;
 scalar_t__ NL80211_CHAN_WIDTH_20 ;
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ;
 scalar_t__ NL80211_CHAN_WIDTH_5 ;
 int NL80211_IFTYPE_ADHOC ;
 int RCU_INIT_POINTER (int ,int *) ;
 int cfg80211_chandef_dfs_required (int ,struct cfg80211_chan_def*,int ) ;
 int cfg80211_chandef_to_scan_width (struct cfg80211_chan_def*) ;
 int cfg80211_ibss_joined (int ,int ,struct ieee80211_channel*,int ) ;
 struct cfg80211_bss* cfg80211_inform_bss_frame_data (int ,struct cfg80211_inform_bss*,struct ieee80211_mgmt*,int ,int ) ;
 int cfg80211_put_bss (int ,struct cfg80211_bss*) ;
 int cfg80211_reg_can_beacon (int ,struct cfg80211_chan_def*,int ) ;
 int drv_join_ibss (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int drv_leave_ibss (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int drv_reset_tsf (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int ether_addr_equal (int ,int const*) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int) ;
 struct beacon_data* ieee80211_ibss_build_presp (struct ieee80211_sub_if_data*,int const,int const,int const,int ,struct cfg80211_chan_def*,int*,int *) ;
 int ieee80211_reset_erp_info (struct ieee80211_sub_if_data*) ;
 int ieee80211_set_wmm_default (struct ieee80211_sub_if_data*,int,int) ;
 int ieee80211_vif_release_channel (struct ieee80211_sub_if_data*) ;
 scalar_t__ ieee80211_vif_use_channel (struct ieee80211_sub_if_data*,struct cfg80211_chan_def*,int ) ;
 scalar_t__ jiffies ;
 int kfree_rcu (struct beacon_data*,int ) ;
 int lockdep_is_held (int *) ;
 int memcpy (int ,int const*,scalar_t__) ;
 int mod_timer (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int rcu_assign_pointer (int ,struct beacon_data*) ;
 struct beacon_data* rcu_dereference_protected (int ,int ) ;
 int rcu_head ;
 int round_jiffies (scalar_t__) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,...) ;
 int sta_info_flush (struct ieee80211_sub_if_data*) ;

__attribute__((used)) static void __ieee80211_sta_join_ibss(struct ieee80211_sub_if_data *sdata,
          const u8 *bssid, const int beacon_int,
          struct cfg80211_chan_def *req_chandef,
          const u32 basic_rates,
          const u16 capability, u64 tsf,
          bool creator)
{
 struct ieee80211_if_ibss *ifibss = &sdata->u.ibss;
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_mgmt *mgmt;
 struct cfg80211_bss *bss;
 u32 bss_change;
 struct cfg80211_chan_def chandef;
 struct ieee80211_channel *chan;
 struct beacon_data *presp;
 struct cfg80211_inform_bss bss_meta = {};
 bool have_higher_than_11mbit;
 bool radar_required;
 int err;

 sdata_assert_lock(sdata);


 drv_reset_tsf(local, sdata);

 if (!ether_addr_equal(ifibss->bssid, bssid))
  sta_info_flush(sdata);


 if (sdata->vif.bss_conf.ibss_joined) {
  sdata->vif.bss_conf.ibss_joined = 0;
  sdata->vif.bss_conf.ibss_creator = 0;
  sdata->vif.bss_conf.enable_beacon = 0;
  netif_carrier_off(sdata->dev);
  ieee80211_bss_info_change_notify(sdata,
       BSS_CHANGED_IBSS |
       BSS_CHANGED_BEACON_ENABLED);
  drv_leave_ibss(local, sdata);
 }

 presp = rcu_dereference_protected(ifibss->presp,
       lockdep_is_held(&sdata->wdev.mtx));
 RCU_INIT_POINTER(ifibss->presp, ((void*)0));
 if (presp)
  kfree_rcu(presp, rcu_head);


 chandef = *req_chandef;
 chan = chandef.chan;
 if (!cfg80211_reg_can_beacon(local->hw.wiphy, &chandef,
         NL80211_IFTYPE_ADHOC)) {
  if (chandef.width == NL80211_CHAN_WIDTH_5 ||
      chandef.width == NL80211_CHAN_WIDTH_10 ||
      chandef.width == NL80211_CHAN_WIDTH_20_NOHT ||
      chandef.width == NL80211_CHAN_WIDTH_20) {
   sdata_info(sdata,
       "Failed to join IBSS, beacons forbidden\n");
   return;
  }
  chandef.width = NL80211_CHAN_WIDTH_20;
  chandef.center_freq1 = chan->center_freq;

  if (!cfg80211_reg_can_beacon(local->hw.wiphy, &chandef,
          NL80211_IFTYPE_ADHOC)) {
   sdata_info(sdata,
       "Failed to join IBSS, beacons forbidden\n");
   return;
  }
 }

 err = cfg80211_chandef_dfs_required(sdata->local->hw.wiphy,
         &chandef, NL80211_IFTYPE_ADHOC);
 if (err < 0) {
  sdata_info(sdata,
      "Failed to join IBSS, invalid chandef\n");
  return;
 }
 if (err > 0 && !ifibss->userspace_handles_dfs) {
  sdata_info(sdata,
      "Failed to join IBSS, DFS channel without control program\n");
  return;
 }

 radar_required = err;

 mutex_lock(&local->mtx);
 if (ieee80211_vif_use_channel(sdata, &chandef,
          ifibss->fixed_channel ?
     IEEE80211_CHANCTX_SHARED :
     IEEE80211_CHANCTX_EXCLUSIVE)) {
  sdata_info(sdata, "Failed to join IBSS, no channel context\n");
  mutex_unlock(&local->mtx);
  return;
 }
 sdata->radar_required = radar_required;
 mutex_unlock(&local->mtx);

 memcpy(ifibss->bssid, bssid, ETH_ALEN);

 presp = ieee80211_ibss_build_presp(sdata, beacon_int, basic_rates,
        capability, tsf, &chandef,
        &have_higher_than_11mbit, ((void*)0));
 if (!presp)
  return;

 rcu_assign_pointer(ifibss->presp, presp);
 mgmt = (void *)presp->head;

 sdata->vif.bss_conf.enable_beacon = 1;
 sdata->vif.bss_conf.beacon_int = beacon_int;
 sdata->vif.bss_conf.basic_rates = basic_rates;
 sdata->vif.bss_conf.ssid_len = ifibss->ssid_len;
 memcpy(sdata->vif.bss_conf.ssid, ifibss->ssid, ifibss->ssid_len);
 bss_change = BSS_CHANGED_BEACON_INT;
 bss_change |= ieee80211_reset_erp_info(sdata);
 bss_change |= BSS_CHANGED_BSSID;
 bss_change |= BSS_CHANGED_BEACON;
 bss_change |= BSS_CHANGED_BEACON_ENABLED;
 bss_change |= BSS_CHANGED_BASIC_RATES;
 bss_change |= BSS_CHANGED_HT;
 bss_change |= BSS_CHANGED_IBSS;
 bss_change |= BSS_CHANGED_SSID;
 sdata->vif.bss_conf.use_short_slot = chan->band == NL80211_BAND_5GHZ;
 bss_change |= BSS_CHANGED_ERP_SLOT;


 if (chan->band == NL80211_BAND_2GHZ && have_higher_than_11mbit)
  sdata->flags |= IEEE80211_SDATA_OPERATING_GMODE;
 else
  sdata->flags &= ~IEEE80211_SDATA_OPERATING_GMODE;

 ieee80211_set_wmm_default(sdata, 1, 0);

 sdata->vif.bss_conf.ibss_joined = 1;
 sdata->vif.bss_conf.ibss_creator = creator;

 err = drv_join_ibss(local, sdata);
 if (err) {
  sdata->vif.bss_conf.ibss_joined = 0;
  sdata->vif.bss_conf.ibss_creator = 0;
  sdata->vif.bss_conf.enable_beacon = 0;
  sdata->vif.bss_conf.ssid_len = 0;
  RCU_INIT_POINTER(ifibss->presp, ((void*)0));
  kfree_rcu(presp, rcu_head);
  mutex_lock(&local->mtx);
  ieee80211_vif_release_channel(sdata);
  mutex_unlock(&local->mtx);
  sdata_info(sdata, "Failed to join IBSS, driver failure: %d\n",
      err);
  return;
 }

 ieee80211_bss_info_change_notify(sdata, bss_change);

 ifibss->state = IEEE80211_IBSS_MLME_JOINED;
 mod_timer(&ifibss->timer,
    round_jiffies(jiffies + IEEE80211_IBSS_MERGE_INTERVAL));

 bss_meta.chan = chan;
 bss_meta.scan_width = cfg80211_chandef_to_scan_width(&chandef);
 bss = cfg80211_inform_bss_frame_data(local->hw.wiphy, &bss_meta, mgmt,
          presp->head_len, GFP_KERNEL);

 cfg80211_put_bss(local->hw.wiphy, bss);
 netif_carrier_on(sdata->dev);
 cfg80211_ibss_joined(sdata->dev, ifibss->bssid, chan, GFP_KERNEL);
}
