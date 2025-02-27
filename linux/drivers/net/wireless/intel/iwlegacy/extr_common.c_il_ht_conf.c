
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int protection; int non_gf_sta_present; int enabled; } ;
struct il_ht_config {int single_chain_sufficient; } ;
struct il_priv {TYPE_1__ ht; struct il_ht_config current_ht_config; } ;
struct ieee80211_bss_conf {int ht_operation_mode; int bssid; } ;
struct ieee80211_vif {int type; struct ieee80211_bss_conf bss_conf; } ;
struct TYPE_4__ {int tx_params; int * rx_mask; } ;
struct ieee80211_sta_ht_cap {TYPE_2__ mcs; } ;
struct ieee80211_sta {struct ieee80211_sta_ht_cap ht_cap; } ;


 int D_ASSOC (char*) ;
 int IEEE80211_HT_MCS_TX_MAX_STREAMS_MASK ;
 int IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT ;
 int IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT ;
 int IEEE80211_HT_OP_MODE_PROTECTION ;


 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void
il_ht_conf(struct il_priv *il, struct ieee80211_vif *vif)
{
 struct il_ht_config *ht_conf = &il->current_ht_config;
 struct ieee80211_sta *sta;
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;

 D_ASSOC("enter:\n");

 if (!il->ht.enabled)
  return;

 il->ht.protection =
     bss_conf->ht_operation_mode & IEEE80211_HT_OP_MODE_PROTECTION;
 il->ht.non_gf_sta_present =
     !!(bss_conf->
        ht_operation_mode & IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT);

 ht_conf->single_chain_sufficient = 0;

 switch (vif->type) {
 case 128:
  rcu_read_lock();
  sta = ieee80211_find_sta(vif, bss_conf->bssid);
  if (sta) {
   struct ieee80211_sta_ht_cap *ht_cap = &sta->ht_cap;
   int maxstreams;

   maxstreams =
       (ht_cap->mcs.
        tx_params & IEEE80211_HT_MCS_TX_MAX_STREAMS_MASK)
       >> IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT;
   maxstreams += 1;

   if (ht_cap->mcs.rx_mask[1] == 0 &&
       ht_cap->mcs.rx_mask[2] == 0)
    ht_conf->single_chain_sufficient = 1;
   if (maxstreams <= 1)
    ht_conf->single_chain_sufficient = 1;
  } else {






   ht_conf->single_chain_sufficient = 1;
  }
  rcu_read_unlock();
  break;
 case 129:
  ht_conf->single_chain_sufficient = 1;
  break;
 default:
  break;
 }

 D_ASSOC("leave\n");
}
