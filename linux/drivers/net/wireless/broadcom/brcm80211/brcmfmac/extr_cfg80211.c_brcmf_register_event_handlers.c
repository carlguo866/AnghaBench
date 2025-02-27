
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_info {int pub; } ;


 int BRCMF_E_ACTION_FRAME_COMPLETE ;
 int BRCMF_E_ACTION_FRAME_OFF_CHAN_COMPLETE ;
 int BRCMF_E_ACTION_FRAME_RX ;
 int BRCMF_E_ASSOC_IND ;
 int BRCMF_E_DEAUTH ;
 int BRCMF_E_DEAUTH_IND ;
 int BRCMF_E_DISASSOC_IND ;
 int BRCMF_E_IF ;
 int BRCMF_E_LINK ;
 int BRCMF_E_MIC_ERROR ;
 int BRCMF_E_P2P_DISC_LISTEN_COMPLETE ;
 int BRCMF_E_P2P_PROBEREQ_MSG ;
 int BRCMF_E_PFN_NET_FOUND ;
 int BRCMF_E_PSK_SUP ;
 int BRCMF_E_REASSOC_IND ;
 int BRCMF_E_ROAM ;
 int BRCMF_E_SET_SSID ;
 int brcmf_fweh_register (int ,int ,int ) ;
 int brcmf_notify_connect_status ;
 int brcmf_notify_mic_status ;
 int brcmf_notify_roaming_status ;
 int brcmf_notify_sched_scan_results ;
 int brcmf_notify_vif_event ;
 int brcmf_p2p_notify_action_frame_rx ;
 int brcmf_p2p_notify_action_tx_complete ;
 int brcmf_p2p_notify_listen_complete ;
 int brcmf_p2p_notify_rx_mgmt_p2p_probereq ;

__attribute__((used)) static void brcmf_register_event_handlers(struct brcmf_cfg80211_info *cfg)
{
 brcmf_fweh_register(cfg->pub, BRCMF_E_LINK,
       brcmf_notify_connect_status);
 brcmf_fweh_register(cfg->pub, BRCMF_E_DEAUTH_IND,
       brcmf_notify_connect_status);
 brcmf_fweh_register(cfg->pub, BRCMF_E_DEAUTH,
       brcmf_notify_connect_status);
 brcmf_fweh_register(cfg->pub, BRCMF_E_DISASSOC_IND,
       brcmf_notify_connect_status);
 brcmf_fweh_register(cfg->pub, BRCMF_E_ASSOC_IND,
       brcmf_notify_connect_status);
 brcmf_fweh_register(cfg->pub, BRCMF_E_REASSOC_IND,
       brcmf_notify_connect_status);
 brcmf_fweh_register(cfg->pub, BRCMF_E_ROAM,
       brcmf_notify_roaming_status);
 brcmf_fweh_register(cfg->pub, BRCMF_E_MIC_ERROR,
       brcmf_notify_mic_status);
 brcmf_fweh_register(cfg->pub, BRCMF_E_SET_SSID,
       brcmf_notify_connect_status);
 brcmf_fweh_register(cfg->pub, BRCMF_E_PFN_NET_FOUND,
       brcmf_notify_sched_scan_results);
 brcmf_fweh_register(cfg->pub, BRCMF_E_IF,
       brcmf_notify_vif_event);
 brcmf_fweh_register(cfg->pub, BRCMF_E_P2P_PROBEREQ_MSG,
       brcmf_p2p_notify_rx_mgmt_p2p_probereq);
 brcmf_fweh_register(cfg->pub, BRCMF_E_P2P_DISC_LISTEN_COMPLETE,
       brcmf_p2p_notify_listen_complete);
 brcmf_fweh_register(cfg->pub, BRCMF_E_ACTION_FRAME_RX,
       brcmf_p2p_notify_action_frame_rx);
 brcmf_fweh_register(cfg->pub, BRCMF_E_ACTION_FRAME_COMPLETE,
       brcmf_p2p_notify_action_tx_complete);
 brcmf_fweh_register(cfg->pub, BRCMF_E_ACTION_FRAME_OFF_CHAN_COMPLETE,
       brcmf_p2p_notify_action_tx_complete);
 brcmf_fweh_register(cfg->pub, BRCMF_E_PSK_SUP,
       brcmf_notify_connect_status);
}
