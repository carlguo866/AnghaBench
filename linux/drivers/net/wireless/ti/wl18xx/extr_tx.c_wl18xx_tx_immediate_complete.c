
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct wl18xx_priv {scalar_t__ last_fw_rls_idx; } ;
struct wl18xx_fw_status_priv {scalar_t__ fw_release_idx; int * released_tx_desc; } ;
struct wl1271 {int tx_results_count; TYPE_3__* fw_status; TYPE_1__* links; struct wl18xx_priv* priv; } ;
struct TYPE_5__ {size_t hlid; int tx_last_rate_mbps; int tx_last_rate; } ;
struct TYPE_6__ {TYPE_2__ counters; scalar_t__ priv; } ;
struct TYPE_4__ {int fw_rate_mbps; int fw_rate_idx; } ;


 int DEBUG_TX ;
 int WARN_ON (int) ;
 size_t WL18XX_FW_MAX_TX_STATUS_DESC ;
 size_t WLCORE_MAX_LINKS ;
 int wl1271_debug (int ,char*,scalar_t__,scalar_t__) ;
 int wl1271_error (char*,size_t) ;
 int wl18xx_tx_complete_packet (struct wl1271*,int ) ;

void wl18xx_tx_immediate_complete(struct wl1271 *wl)
{
 struct wl18xx_fw_status_priv *status_priv =
  (struct wl18xx_fw_status_priv *)wl->fw_status->priv;
 struct wl18xx_priv *priv = wl->priv;
 u8 i, hlid;


 if (priv->last_fw_rls_idx == status_priv->fw_release_idx)
  return;


 hlid = wl->fw_status->counters.hlid;

 if (hlid < WLCORE_MAX_LINKS) {
  wl->links[hlid].fw_rate_idx =
    wl->fw_status->counters.tx_last_rate;
  wl->links[hlid].fw_rate_mbps =
    wl->fw_status->counters.tx_last_rate_mbps;
 }


 wl1271_debug(DEBUG_TX, "last released desc = %d, current idx = %d",
       priv->last_fw_rls_idx, status_priv->fw_release_idx);

 if (status_priv->fw_release_idx >= WL18XX_FW_MAX_TX_STATUS_DESC) {
  wl1271_error("invalid desc release index %d",
        status_priv->fw_release_idx);
  WARN_ON(1);
  return;
 }

 for (i = priv->last_fw_rls_idx;
      i != status_priv->fw_release_idx;
      i = (i + 1) % WL18XX_FW_MAX_TX_STATUS_DESC) {
  wl18xx_tx_complete_packet(wl,
   status_priv->released_tx_desc[i]);

  wl->tx_results_count++;
 }

 priv->last_fw_rls_idx = status_priv->fw_release_idx;
}
