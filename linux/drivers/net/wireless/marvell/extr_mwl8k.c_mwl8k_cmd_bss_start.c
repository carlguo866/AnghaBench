
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl8k_vif {int macid; } ;
struct mwl8k_priv {int running_bsses; } ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_bss_start {TYPE_1__ header; int enable; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWL8K_CMD_BSS_START ;
 struct mwl8k_vif* MWL8K_VIF (struct ieee80211_vif*) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int kfree (struct mwl8k_cmd_bss_start*) ;
 struct mwl8k_cmd_bss_start* kzalloc (int,int ) ;
 int mwl8k_post_pervif_cmd (struct ieee80211_hw*,struct ieee80211_vif*,TYPE_1__*) ;

__attribute__((used)) static int mwl8k_cmd_bss_start(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif, int enable)
{
 struct mwl8k_cmd_bss_start *cmd;
 struct mwl8k_vif *mwl8k_vif = MWL8K_VIF(vif);
 struct mwl8k_priv *priv = hw->priv;
 int rc;

 if (enable && (priv->running_bsses & (1 << mwl8k_vif->macid)))
  return 0;

 if (!enable && !(priv->running_bsses & (1 << mwl8k_vif->macid)))
  return 0;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_BSS_START);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->enable = cpu_to_le32(enable);

 rc = mwl8k_post_pervif_cmd(hw, vif, &cmd->header);
 kfree(cmd);

 if (!rc) {
  if (enable)
   priv->running_bsses |= (1 << mwl8k_vif->macid);
  else
   priv->running_bsses &= ~(1 << mwl8k_vif->macid);
 }
 return rc;
}
