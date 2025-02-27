
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_sta {scalar_t__ wcid; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {scalar_t__ priv; } ;
struct ieee80211_ampdu_params {int action; int tid; struct ieee80211_sta* sta; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;
 scalar_t__ WCID_END ;
 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,int ) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,int ) ;
 int rt2x00_warn (struct rt2x00_dev*,char*) ;

int rt2800_ampdu_action(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
   struct ieee80211_ampdu_params *params)
{
 struct ieee80211_sta *sta = params->sta;
 enum ieee80211_ampdu_mlme_action action = params->action;
 u16 tid = params->tid;
 struct rt2x00_sta *sta_priv = (struct rt2x00_sta *)sta->drv_priv;
 int ret = 0;
 if (sta_priv->wcid > WCID_END)
  return 1;

 switch (action) {
 case 134:
 case 133:






  break;
 case 131:
  ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 case 130:
 case 129:
 case 128:
  ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 case 132:
  break;
 default:
  rt2x00_warn((struct rt2x00_dev *)hw->priv,
       "Unknown AMPDU action\n");
 }

 return ret;
}
