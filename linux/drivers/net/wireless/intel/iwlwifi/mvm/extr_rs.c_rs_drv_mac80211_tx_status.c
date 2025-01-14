
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm_sta {int vif; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 int ieee80211_is_data (int ) ;
 int ieee80211_is_qos_nullfunc (int ) ;
 int iwl_mvm_rs_tx_status (struct iwl_mvm*,struct ieee80211_sta*,int ,struct ieee80211_tx_info*,int ) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int rs_get_tid (struct ieee80211_hdr*) ;

__attribute__((used)) static void rs_drv_mac80211_tx_status(void *mvm_r,
          struct ieee80211_supported_band *sband,
          struct ieee80211_sta *sta, void *priv_sta,
          struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct iwl_op_mode *op_mode = mvm_r;
 struct iwl_mvm *mvm = IWL_OP_MODE_GET_MVM(op_mode);
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);

 if (!mvmsta->vif)
  return;

 if (!ieee80211_is_data(hdr->frame_control) ||
     info->flags & IEEE80211_TX_CTL_NO_ACK)
  return;

 iwl_mvm_rs_tx_status(mvm, sta, rs_get_tid(hdr), info,
        ieee80211_is_qos_nullfunc(hdr->frame_control));
}
