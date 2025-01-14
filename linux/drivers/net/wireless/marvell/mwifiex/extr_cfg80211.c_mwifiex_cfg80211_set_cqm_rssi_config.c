
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {scalar_t__ cqm_rssi_hyst; scalar_t__ cqm_rssi_thold; } ;
struct TYPE_4__ {int evt_freq; void* abs_value; } ;
struct TYPE_3__ {int evt_freq; void* abs_value; } ;
struct mwifiex_ds_misc_subsc_evt {int events; int action; TYPE_2__ bcn_h_rssi_cfg; TYPE_1__ bcn_l_rssi_cfg; } ;
typedef scalar_t__ s32 ;


 int BITMASK_BCN_RSSI_HIGH ;
 int BITMASK_BCN_RSSI_LOW ;
 int HostCmd_ACT_BITWISE_CLR ;
 int HostCmd_ACT_BITWISE_SET ;
 int HostCmd_CMD_802_11_SUBSCRIBE_EVENT ;
 void* abs (scalar_t__) ;
 int memset (struct mwifiex_ds_misc_subsc_evt*,int,int) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_ds_misc_subsc_evt*,int) ;

__attribute__((used)) static int mwifiex_cfg80211_set_cqm_rssi_config(struct wiphy *wiphy,
      struct net_device *dev,
      s32 rssi_thold, u32 rssi_hyst)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);
 struct mwifiex_ds_misc_subsc_evt subsc_evt;

 priv->cqm_rssi_thold = rssi_thold;
 priv->cqm_rssi_hyst = rssi_hyst;

 memset(&subsc_evt, 0x00, sizeof(struct mwifiex_ds_misc_subsc_evt));
 subsc_evt.events = BITMASK_BCN_RSSI_LOW | BITMASK_BCN_RSSI_HIGH;


 if (rssi_thold && rssi_hyst) {
  subsc_evt.action = HostCmd_ACT_BITWISE_SET;
  subsc_evt.bcn_l_rssi_cfg.abs_value = abs(rssi_thold);
  subsc_evt.bcn_h_rssi_cfg.abs_value = abs(rssi_thold);
  subsc_evt.bcn_l_rssi_cfg.evt_freq = 1;
  subsc_evt.bcn_h_rssi_cfg.evt_freq = 1;
  return mwifiex_send_cmd(priv,
     HostCmd_CMD_802_11_SUBSCRIBE_EVENT,
     0, 0, &subsc_evt, 1);
 } else {
  subsc_evt.action = HostCmd_ACT_BITWISE_CLR;
  return mwifiex_send_cmd(priv,
     HostCmd_CMD_802_11_SUBSCRIBE_EVENT,
     0, 0, &subsc_evt, 1);
 }

 return 0;
}
