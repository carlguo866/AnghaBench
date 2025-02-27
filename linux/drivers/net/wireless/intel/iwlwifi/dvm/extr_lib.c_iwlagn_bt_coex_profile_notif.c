
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {scalar_t__ bt_enable_flag; scalar_t__ last_bt_traffic_load; scalar_t__ bt_traffic_load; scalar_t__ iw_mode; scalar_t__ bt_status; scalar_t__ bt_ci_compliance; int bt_runtime_config; int workqueue; int bt_traffic_change_work; int bt_ch_announce; int bt_is_sco; } ;
struct iwl_bt_uart_msg {int dummy; } ;
struct iwl_bt_coex_profile_notif {scalar_t__ bt_status; scalar_t__ bt_traffic_load; scalar_t__ bt_ci_compliance; struct iwl_bt_uart_msg last_bt_uart_msg; } ;


 scalar_t__ IWLAGN_BT_FLAG_COEX_MODE_DISABLED ;
 scalar_t__ IWL_BT_COEX_TRAFFIC_LOAD_HIGH ;
 scalar_t__ IWL_BT_COEX_TRAFFIC_LOAD_NONE ;
 int IWL_DEBUG_COEX (struct iwl_priv*,char*,...) ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int iwlagn_bt_traffic_is_sco (struct iwl_bt_uart_msg*) ;
 scalar_t__ iwlagn_fill_txpower_mode (struct iwl_priv*,struct iwl_bt_uart_msg*) ;
 int iwlagn_print_uartmsg (struct iwl_priv*,struct iwl_bt_uart_msg*) ;
 scalar_t__ iwlagn_set_kill_msk (struct iwl_priv*,struct iwl_bt_uart_msg*) ;
 int queue_work (int ,int *) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static void iwlagn_bt_coex_profile_notif(struct iwl_priv *priv,
      struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_bt_coex_profile_notif *coex = (void *)pkt->data;
 struct iwl_bt_uart_msg *uart_msg = &coex->last_bt_uart_msg;

 if (priv->bt_enable_flag == IWLAGN_BT_FLAG_COEX_MODE_DISABLED) {

  return;
 }

 IWL_DEBUG_COEX(priv, "BT Coex notification:\n");
 IWL_DEBUG_COEX(priv, "    status: %d\n", coex->bt_status);
 IWL_DEBUG_COEX(priv, "    traffic load: %d\n", coex->bt_traffic_load);
 IWL_DEBUG_COEX(priv, "    CI compliance: %d\n",
   coex->bt_ci_compliance);
 iwlagn_print_uartmsg(priv, uart_msg);

 priv->last_bt_traffic_load = priv->bt_traffic_load;
 priv->bt_is_sco = iwlagn_bt_traffic_is_sco(uart_msg);

 if (priv->iw_mode != NL80211_IFTYPE_ADHOC) {
  if (priv->bt_status != coex->bt_status ||
      priv->last_bt_traffic_load != coex->bt_traffic_load) {
   if (coex->bt_status) {

    if (!priv->bt_ch_announce)
     priv->bt_traffic_load =
      IWL_BT_COEX_TRAFFIC_LOAD_HIGH;
    else
     priv->bt_traffic_load =
      coex->bt_traffic_load;
   } else {

    priv->bt_traffic_load =
     IWL_BT_COEX_TRAFFIC_LOAD_NONE;
   }
   priv->bt_status = coex->bt_status;
   queue_work(priv->workqueue,
       &priv->bt_traffic_change_work);
  }
 }



 if (iwlagn_fill_txpower_mode(priv, uart_msg) ||
     iwlagn_set_kill_msk(priv, uart_msg))
  queue_work(priv->workqueue, &priv->bt_runtime_config);




 priv->bt_ci_compliance = coex->bt_ci_compliance;
}
