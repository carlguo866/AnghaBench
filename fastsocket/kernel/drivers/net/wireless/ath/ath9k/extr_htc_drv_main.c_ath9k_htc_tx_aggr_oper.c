
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_target_aggr {int tidno; int aggr_enable; int sta_index; } ;
struct ath9k_htc_sta {int * tid_state; int index; } ;
struct TYPE_2__ {int tx_lock; } ;
struct ath9k_htc_priv {TYPE_1__ tx; int ah; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;


 int AGGR_START ;
 int AGGR_STOP ;
 int ATH9K_HTC_MAX_TID ;
 int CONFIG ;
 int EINVAL ;
 int IEEE80211_AMPDU_TX_START ;
 int WMI_CMD_BUF (int ,struct ath9k_htc_target_aggr*) ;
 int WMI_TX_AGGR_ENABLE_CMDID ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,char*,int ,int) ;
 int memset (struct ath9k_htc_target_aggr*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath9k_htc_tx_aggr_oper(struct ath9k_htc_priv *priv,
      struct ieee80211_vif *vif,
      struct ieee80211_sta *sta,
      enum ieee80211_ampdu_mlme_action action,
      u16 tid)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_target_aggr aggr;
 struct ath9k_htc_sta *ista;
 int ret = 0;
 u8 cmd_rsp;

 if (tid >= ATH9K_HTC_MAX_TID)
  return -EINVAL;

 memset(&aggr, 0, sizeof(struct ath9k_htc_target_aggr));
 ista = (struct ath9k_htc_sta *) sta->drv_priv;

 aggr.sta_index = ista->index;
 aggr.tidno = tid & 0xf;
 aggr.aggr_enable = (action == IEEE80211_AMPDU_TX_START) ? 1 : 0;

 WMI_CMD_BUF(WMI_TX_AGGR_ENABLE_CMDID, &aggr);
 if (ret)
  ath_dbg(common, CONFIG,
   "Unable to %s TX aggregation for (%pM, %d)\n",
   (aggr.aggr_enable) ? "start" : "stop", sta->addr, tid);
 else
  ath_dbg(common, CONFIG,
   "%s TX aggregation for (%pM, %d)\n",
   (aggr.aggr_enable) ? "Starting" : "Stopping",
   sta->addr, tid);

 spin_lock_bh(&priv->tx.tx_lock);
 ista->tid_state[tid] = (aggr.aggr_enable && !ret) ? AGGR_START : AGGR_STOP;
 spin_unlock_bh(&priv->tx.tx_lock);

 return ret;
}
