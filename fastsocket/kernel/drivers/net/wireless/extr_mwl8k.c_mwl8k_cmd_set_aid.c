
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {void* length; void* code; } ;
struct mwl8k_cmd_update_set_aid {TYPE_2__ header; int supp_rates; void* protection_mode; int bssid; void* aid; } ;
struct TYPE_3__ {int aid; int ht_operation_mode; scalar_t__ use_cts_prot; int bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_HT_OP_MODE_PROTECTION ;


 int MWL8K_CMD_SET_AID ;
 int MWL8K_FRAME_PROT_11G ;
 int MWL8K_FRAME_PROT_11N_HT_40MHZ_ONLY ;
 int MWL8K_FRAME_PROT_11N_HT_ALL ;
 int MWL8K_FRAME_PROT_DISABLED ;
 void* cpu_to_le16 (int) ;
 int kfree (struct mwl8k_cmd_update_set_aid*) ;
 struct mwl8k_cmd_update_set_aid* kzalloc (int,int ) ;
 int legacy_rate_mask_to_array (int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_2__*) ;

__attribute__((used)) static int
mwl8k_cmd_set_aid(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif, u32 legacy_rate_mask)
{
 struct mwl8k_cmd_update_set_aid *cmd;
 u16 prot_mode;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_SET_AID);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->aid = cpu_to_le16(vif->bss_conf.aid);
 memcpy(cmd->bssid, vif->bss_conf.bssid, ETH_ALEN);

 if (vif->bss_conf.use_cts_prot) {
  prot_mode = MWL8K_FRAME_PROT_11G;
 } else {
  switch (vif->bss_conf.ht_operation_mode &
   IEEE80211_HT_OP_MODE_PROTECTION) {
  case 129:
   prot_mode = MWL8K_FRAME_PROT_11N_HT_40MHZ_ONLY;
   break;
  case 128:
   prot_mode = MWL8K_FRAME_PROT_11N_HT_ALL;
   break;
  default:
   prot_mode = MWL8K_FRAME_PROT_DISABLED;
   break;
  }
 }
 cmd->protection_mode = cpu_to_le16(prot_mode);

 legacy_rate_mask_to_array(cmd->supp_rates, legacy_rate_mask);

 rc = mwl8k_post_cmd(hw, &cmd->header);
 kfree(cmd);

 return rc;
}
