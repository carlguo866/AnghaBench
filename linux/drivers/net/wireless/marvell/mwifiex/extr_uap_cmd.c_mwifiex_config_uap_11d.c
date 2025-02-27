
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_private {int adapter; } ;
struct cfg80211_beacon_data {int tail_len; int tail; } ;
typedef enum state_11d_t { ____Placeholder_state_11d_t } state_11d_t ;


 int DOT11D_I ;
 int ENABLE_11D ;
 int ERROR ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_802_11_SNMP_MIB ;
 int WLAN_EID_COUNTRY ;
 int * cfg80211_find_ie (int ,int ,int ) ;
 int mwifiex_dbg (int ,int ,char*) ;
 scalar_t__ mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int*,int) ;

void mwifiex_config_uap_11d(struct mwifiex_private *priv,
       struct cfg80211_beacon_data *beacon_data)
{
 enum state_11d_t state_11d;
 const u8 *country_ie;

 country_ie = cfg80211_find_ie(WLAN_EID_COUNTRY, beacon_data->tail,
          beacon_data->tail_len);
 if (country_ie) {

  state_11d = ENABLE_11D;
  if (mwifiex_send_cmd(priv, HostCmd_CMD_802_11_SNMP_MIB,
         HostCmd_ACT_GEN_SET, DOT11D_I,
         &state_11d, 1)) {
   mwifiex_dbg(priv->adapter, ERROR,
        "11D: failed to enable 11D\n");
  }
 }
}
