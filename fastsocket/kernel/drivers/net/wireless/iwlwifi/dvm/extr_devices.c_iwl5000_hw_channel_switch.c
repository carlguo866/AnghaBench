
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_9__ {int filter_flags; int flags; } ;
struct TYPE_8__ {int channel; } ;
struct TYPE_7__ {int beacon_interval; } ;
struct iwl_rxon_context {TYPE_3__ staging; TYPE_2__ active; struct ieee80211_vif* vif; TYPE_1__ timing; } ;
struct iwl_priv {scalar_t__ band; int ucode_beacon_time; struct iwl_rxon_context* contexts; } ;
struct iwl_host_cmd {int data; int flags; int len; int id; } ;
struct iwl5000_channel_switch_cmd {int band; int expect_beacon; int switch_time; int rxon_filter_flags; int rxon_flags; int channel; } ;
struct TYPE_10__ {int beacon_int; } ;
struct ieee80211_vif {TYPE_4__ bss_conf; } ;
struct TYPE_12__ {TYPE_5__* chan; } ;
struct ieee80211_channel_switch {int count; int timestamp; TYPE_6__ chandef; } ;
struct TYPE_11__ {int hw_value; int flags; } ;


 int CMD_SYNC ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 int IEEE80211_CHAN_RADAR ;
 int IWL_DEBUG_11H (struct iwl_priv*,char*,int ,...) ;
 size_t IWL_RXON_CTX_BSS ;
 int REPLY_CHANNEL_SWITCH ;
 int TIME_UNIT ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int iwl_add_beacon_time (struct iwl_priv*,int,int,int) ;
 int iwl_dvm_send_cmd (struct iwl_priv*,struct iwl_host_cmd*) ;
 int iwl_usecs_to_beacons (struct iwl_priv*,int,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int iwl5000_hw_channel_switch(struct iwl_priv *priv,
         struct ieee80211_channel_switch *ch_switch)
{




 struct iwl_rxon_context *ctx = &priv->contexts[IWL_RXON_CTX_BSS];
 struct iwl5000_channel_switch_cmd cmd;
 u32 switch_time_in_usec, ucode_switch_time;
 u16 ch;
 u32 tsf_low;
 u8 switch_count;
 u16 beacon_interval = le16_to_cpu(ctx->timing.beacon_interval);
 struct ieee80211_vif *vif = ctx->vif;
 struct iwl_host_cmd hcmd = {
  .id = REPLY_CHANNEL_SWITCH,
  .len = { sizeof(cmd), },
  .flags = CMD_SYNC,
  .data = { &cmd, },
 };

 cmd.band = priv->band == IEEE80211_BAND_2GHZ;
 ch = ch_switch->chandef.chan->hw_value;
 IWL_DEBUG_11H(priv, "channel switch from %d to %d\n",
        ctx->active.channel, ch);
 cmd.channel = cpu_to_le16(ch);
 cmd.rxon_flags = ctx->staging.flags;
 cmd.rxon_filter_flags = ctx->staging.filter_flags;
 switch_count = ch_switch->count;
 tsf_low = ch_switch->timestamp & 0x0ffffffff;




 if ((priv->ucode_beacon_time > tsf_low) && beacon_interval) {
  if (switch_count > ((priv->ucode_beacon_time - tsf_low) /
      beacon_interval)) {
   switch_count -= (priv->ucode_beacon_time -
    tsf_low) / beacon_interval;
  } else
   switch_count = 0;
 }
 if (switch_count <= 1)
  cmd.switch_time = cpu_to_le32(priv->ucode_beacon_time);
 else {
  switch_time_in_usec =
   vif->bss_conf.beacon_int * switch_count * TIME_UNIT;
  ucode_switch_time = iwl_usecs_to_beacons(priv,
        switch_time_in_usec,
        beacon_interval);
  cmd.switch_time = iwl_add_beacon_time(priv,
            priv->ucode_beacon_time,
            ucode_switch_time,
            beacon_interval);
 }
 IWL_DEBUG_11H(priv, "uCode time for the switch is 0x%x\n",
        cmd.switch_time);
 cmd.expect_beacon =
  ch_switch->chandef.chan->flags & IEEE80211_CHAN_RADAR;

 return iwl_dvm_send_cmd(priv, &hcmd);
}
