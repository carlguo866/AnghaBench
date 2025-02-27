
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_set_phy_cfg_data {int caps; unsigned long long low_power_ctrl; unsigned long long eee_cap; unsigned long long eeer_value; unsigned long long link_fec_opt; int phy_type_high; int phy_type_low; } ;
struct TYPE_3__ {int lport_num; } ;
struct TYPE_4__ {TYPE_1__ set_phy; } ;
struct ice_aq_desc {int flags; TYPE_2__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQ_FLAG_RD ;
 int ICE_AQ_PHY_ENA_VALID_MASK ;
 int ICE_DBG_LINK ;
 int ICE_DBG_PHY ;
 int ICE_ERR_PARAM ;
 int cpu_to_le16 (int ) ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,struct ice_aqc_set_phy_cfg_data*,int,struct ice_sq_cd*) ;
 int ice_aqc_opc_set_phy_cfg ;
 int ice_debug (struct ice_hw*,int ,char*,unsigned long long) ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;
 scalar_t__ le64_to_cpu (int ) ;

enum ice_status
ice_aq_set_phy_cfg(struct ice_hw *hw, u8 lport,
     struct ice_aqc_set_phy_cfg_data *cfg, struct ice_sq_cd *cd)
{
 struct ice_aq_desc desc;

 if (!cfg)
  return ICE_ERR_PARAM;


 if (cfg->caps & ~ICE_AQ_PHY_ENA_VALID_MASK) {
  ice_debug(hw, ICE_DBG_PHY,
     "Invalid bit is set in ice_aqc_set_phy_cfg_data->caps : 0x%x\n",
     cfg->caps);

  cfg->caps &= ICE_AQ_PHY_ENA_VALID_MASK;
 }

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_phy_cfg);
 desc.params.set_phy.lport_num = lport;
 desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);

 ice_debug(hw, ICE_DBG_LINK, "phy_type_low = 0x%llx\n",
    (unsigned long long)le64_to_cpu(cfg->phy_type_low));
 ice_debug(hw, ICE_DBG_LINK, "phy_type_high = 0x%llx\n",
    (unsigned long long)le64_to_cpu(cfg->phy_type_high));
 ice_debug(hw, ICE_DBG_LINK, "caps = 0x%x\n", cfg->caps);
 ice_debug(hw, ICE_DBG_LINK, "low_power_ctrl = 0x%x\n",
    cfg->low_power_ctrl);
 ice_debug(hw, ICE_DBG_LINK, "eee_cap = 0x%x\n", cfg->eee_cap);
 ice_debug(hw, ICE_DBG_LINK, "eeer_value = 0x%x\n", cfg->eeer_value);
 ice_debug(hw, ICE_DBG_LINK, "link_fec_opt = 0x%x\n", cfg->link_fec_opt);

 return ice_aq_send_cmd(hw, &desc, cfg, sizeof(*cfg), cd);
}
