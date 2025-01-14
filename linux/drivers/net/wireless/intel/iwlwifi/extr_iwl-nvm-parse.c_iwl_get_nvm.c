
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct iwl_trans {int dummy; } ;
struct TYPE_12__ {scalar_t__ channel_profile; } ;
struct iwl_nvm_get_info_rsp_v3 {TYPE_5__ regulatory; } ;
struct TYPE_11__ {scalar_t__ channel_profile; int lar_enabled; } ;
struct TYPE_10__ {int rx_chains; int tx_chains; } ;
struct TYPE_9__ {int mac_sku_flags; } ;
struct TYPE_8__ {scalar_t__ n_hw_addrs; int nvm_version; int flags; } ;
struct iwl_nvm_get_info_rsp {TYPE_4__ regulatory; TYPE_3__ phy_sku; TYPE_2__ mac_sku; TYPE_1__ general; } ;
struct iwl_nvm_get_info {int dummy; } ;
struct iwl_nvm_data {scalar_t__ n_hw_addrs; int sku_cap_11ac_enable; int sku_cap_11n_enable; int sku_cap_11ax_enable; int sku_cap_band_24ghz_enable; int sku_cap_band_52ghz_enable; int sku_cap_mimo_disabled; int valid_tx_ant; int valid_rx_ant; int lar_enabled; int nvm_version; int hw_addr; } ;
struct iwl_host_cmd {int flags; TYPE_7__* resp_pkt; int id; int len; int data; } ;
struct iwl_fw {int valid_tx_ant; int valid_rx_ant; int ucode_capa; } ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_13__ {int lar_disable; } ;


 int CMD_SEND_IN_RFKILL ;
 int CMD_WANT_SKB ;
 int EINVAL ;
 int ENOMEM ;
 struct iwl_nvm_data* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 int IWL_INFO (struct iwl_trans*,char*,...) ;
 int IWL_NUM_CHANNELS ;
 int IWL_NVM_SBANDS_FLAGS_LAR ;
 int IWL_UCODE_TLV_API_REGULATORY_NVM_INFO ;
 int IWL_UCODE_TLV_CAPA_LAR_SUPPORT ;
 int IWL_WARN (struct iwl_trans*,char*,int) ;
 int NVM_GENERAL_FLAGS_EMPTY_OTP ;
 int NVM_GET_INFO ;
 int NVM_MAC_SKU_FLAGS_802_11AC_ENABLED ;
 int NVM_MAC_SKU_FLAGS_802_11AX_ENABLED ;
 int NVM_MAC_SKU_FLAGS_802_11N_ENABLED ;
 int NVM_MAC_SKU_FLAGS_BAND_2_4_ENABLED ;
 int NVM_MAC_SKU_FLAGS_BAND_5_2_ENABLED ;
 int NVM_MAC_SKU_FLAGS_MIMO_DISABLED ;
 int REGULATORY_AND_NVM_GROUP ;
 scalar_t__ WARN (int,char*,size_t) ;
 int WIDE_ID (int ,int ) ;
 int channels ;
 int fw_has_api (int *,int ) ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int is_valid_ether_addr (int ) ;
 int iwl_free_resp (struct iwl_host_cmd*) ;
 int iwl_init_sbands (struct iwl_trans*,struct iwl_nvm_data*,void*,int,int,int,int) ;
 size_t iwl_rx_packet_payload_len (TYPE_7__*) ;
 int iwl_set_hw_address_from_csr (struct iwl_trans*,struct iwl_nvm_data*) ;
 int iwl_trans_send_cmd (struct iwl_trans*,struct iwl_host_cmd*) ;
 TYPE_6__ iwlwifi_mod_params ;
 int kfree (struct iwl_nvm_data*) ;
 struct iwl_nvm_data* kzalloc (int ,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int struct_size (struct iwl_nvm_data*,int ,int ) ;

struct iwl_nvm_data *iwl_get_nvm(struct iwl_trans *trans,
     const struct iwl_fw *fw)
{
 struct iwl_nvm_get_info cmd = {};
 struct iwl_nvm_data *nvm;
 struct iwl_host_cmd hcmd = {
  .flags = CMD_WANT_SKB | CMD_SEND_IN_RFKILL,
  .data = { &cmd, },
  .len = { sizeof(cmd) },
  .id = WIDE_ID(REGULATORY_AND_NVM_GROUP, NVM_GET_INFO)
 };
 int ret;
 bool lar_fw_supported = !iwlwifi_mod_params.lar_disable &&
    fw_has_capa(&fw->ucode_capa,
         IWL_UCODE_TLV_CAPA_LAR_SUPPORT);
 bool empty_otp;
 u32 mac_flags;
 u32 sbands_flags = 0;






 struct iwl_nvm_get_info_rsp *rsp;
 struct iwl_nvm_get_info_rsp_v3 *rsp_v3;
 bool v4 = fw_has_api(&fw->ucode_capa,
        IWL_UCODE_TLV_API_REGULATORY_NVM_INFO);
 size_t rsp_size = v4 ? sizeof(*rsp) : sizeof(*rsp_v3);
 void *channel_profile;

 ret = iwl_trans_send_cmd(trans, &hcmd);
 if (ret)
  return ERR_PTR(ret);

 if (WARN(iwl_rx_packet_payload_len(hcmd.resp_pkt) != rsp_size,
   "Invalid payload len in NVM response from FW %d",
   iwl_rx_packet_payload_len(hcmd.resp_pkt))) {
  ret = -EINVAL;
  goto out;
 }

 rsp = (void *)hcmd.resp_pkt->data;
 empty_otp = !!(le32_to_cpu(rsp->general.flags) &
         NVM_GENERAL_FLAGS_EMPTY_OTP);
 if (empty_otp)
  IWL_INFO(trans, "OTP is empty\n");

 nvm = kzalloc(struct_size(nvm, channels, IWL_NUM_CHANNELS), GFP_KERNEL);
 if (!nvm) {
  ret = -ENOMEM;
  goto out;
 }

 iwl_set_hw_address_from_csr(trans, nvm);


 if (!is_valid_ether_addr(nvm->hw_addr)) {
  IWL_ERR(trans, "no valid mac address was found\n");
  ret = -EINVAL;
  goto err_free;
 }

 IWL_INFO(trans, "base HW address: %pM\n", nvm->hw_addr);


 nvm->nvm_version = le16_to_cpu(rsp->general.nvm_version);
 nvm->n_hw_addrs = rsp->general.n_hw_addrs;
 if (nvm->n_hw_addrs == 0)
  IWL_WARN(trans,
    "Firmware declares no reserved mac addresses. OTP is empty: %d\n",
    empty_otp);


 mac_flags = le32_to_cpu(rsp->mac_sku.mac_sku_flags);
 nvm->sku_cap_11ac_enable =
  !!(mac_flags & NVM_MAC_SKU_FLAGS_802_11AC_ENABLED);
 nvm->sku_cap_11n_enable =
  !!(mac_flags & NVM_MAC_SKU_FLAGS_802_11N_ENABLED);
 nvm->sku_cap_11ax_enable =
  !!(mac_flags & NVM_MAC_SKU_FLAGS_802_11AX_ENABLED);
 nvm->sku_cap_band_24ghz_enable =
  !!(mac_flags & NVM_MAC_SKU_FLAGS_BAND_2_4_ENABLED);
 nvm->sku_cap_band_52ghz_enable =
  !!(mac_flags & NVM_MAC_SKU_FLAGS_BAND_5_2_ENABLED);
 nvm->sku_cap_mimo_disabled =
  !!(mac_flags & NVM_MAC_SKU_FLAGS_MIMO_DISABLED);


 nvm->valid_tx_ant = (u8)le32_to_cpu(rsp->phy_sku.tx_chains);
 nvm->valid_rx_ant = (u8)le32_to_cpu(rsp->phy_sku.rx_chains);

 if (le32_to_cpu(rsp->regulatory.lar_enabled) && lar_fw_supported) {
  nvm->lar_enabled = 1;
  sbands_flags |= IWL_NVM_SBANDS_FLAGS_LAR;
 }

 rsp_v3 = (void *)rsp;
 channel_profile = v4 ? (void *)rsp->regulatory.channel_profile :
     (void *)rsp_v3->regulatory.channel_profile;

 iwl_init_sbands(trans, nvm,
   channel_profile,
   nvm->valid_tx_ant & fw->valid_tx_ant,
   nvm->valid_rx_ant & fw->valid_rx_ant,
   sbands_flags, v4);

 iwl_free_resp(&hcmd);
 return nvm;

err_free:
 kfree(nvm);
out:
 iwl_free_resp(&hcmd);
 return ERR_PTR(ret);
}
