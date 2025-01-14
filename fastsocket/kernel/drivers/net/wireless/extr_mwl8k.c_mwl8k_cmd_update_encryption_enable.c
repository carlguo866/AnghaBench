
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_update_encryption {TYPE_1__ header; int encr_type; int mac_addr; int action; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int MWL8K_CMD_UPDATE_ENCRYPTION ;
 int MWL8K_ENCR_ENABLE ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct mwl8k_cmd_update_encryption*) ;
 struct mwl8k_cmd_update_encryption* kzalloc (int,int ) ;
 int memcpy (int ,int *,int ) ;
 int mwl8k_post_pervif_cmd (struct ieee80211_hw*,struct ieee80211_vif*,TYPE_1__*) ;

__attribute__((used)) static int mwl8k_cmd_update_encryption_enable(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif,
           u8 *addr,
           u8 encr_type)
{
 struct mwl8k_cmd_update_encryption *cmd;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_UPDATE_ENCRYPTION);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->action = cpu_to_le32(MWL8K_ENCR_ENABLE);
 memcpy(cmd->mac_addr, addr, ETH_ALEN);
 cmd->encr_type = encr_type;

 rc = mwl8k_post_pervif_cmd(hw, vif, &cmd->header);
 kfree(cmd);

 return rc;
}
