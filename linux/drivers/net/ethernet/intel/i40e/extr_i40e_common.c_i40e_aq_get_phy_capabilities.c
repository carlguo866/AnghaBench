
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u16 ;
struct TYPE_10__ {int phy_types; } ;
struct TYPE_9__ {int asq_last_status; scalar_t__ api_maj_ver; scalar_t__ api_min_ver; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_5__ phy; TYPE_4__ aq; TYPE_3__ mac; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aq_get_phy_abilities_resp {scalar_t__ phy_type_ext; int phy_type; } ;
struct TYPE_6__ {int param0; } ;
struct TYPE_7__ {TYPE_1__ external; } ;
struct i40e_aq_desc {TYPE_2__ params; int flags; } ;
typedef scalar_t__ i40e_status ;


 scalar_t__ I40E_AQ_FLAG_BUF ;
 scalar_t__ I40E_AQ_FLAG_LB ;
 scalar_t__ I40E_AQ_LARGE_BUF ;
 int I40E_AQ_PHY_REPORT_INITIAL_VALUES ;
 int I40E_AQ_PHY_REPORT_QUALIFIED_MODULES ;


 scalar_t__ I40E_ERR_PARAM ;
 scalar_t__ I40E_ERR_TIMEOUT ;
 scalar_t__ I40E_ERR_UNKNOWN_PHY ;
 scalar_t__ I40E_FW_API_VERSION_MAJOR ;
 scalar_t__ I40E_MAC_XL710 ;
 scalar_t__ I40E_MAX_PHY_TIMEOUT ;
 scalar_t__ I40E_MINOR_VER_GET_LINK_INFO_XL710 ;
 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ i40e_aq_get_link_info (struct i40e_hw*,int,int *,int *) ;
 int i40e_aqc_opc_get_phy_abilities ;
 scalar_t__ i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,struct i40e_aq_get_phy_abilities_resp*,scalar_t__,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;
 int le32_to_cpu (int ) ;
 int usleep_range (int,int) ;

i40e_status i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
   bool qualified_modules, bool report_init,
   struct i40e_aq_get_phy_abilities_resp *abilities,
   struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 i40e_status status;
 u16 abilities_size = sizeof(struct i40e_aq_get_phy_abilities_resp);
 u16 max_delay = I40E_MAX_PHY_TIMEOUT, total_delay = 0;

 if (!abilities)
  return I40E_ERR_PARAM;

 do {
  i40e_fill_default_direct_cmd_desc(&desc,
            i40e_aqc_opc_get_phy_abilities);

  desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
  if (abilities_size > I40E_AQ_LARGE_BUF)
   desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);

  if (qualified_modules)
   desc.params.external.param0 |=
   cpu_to_le32(I40E_AQ_PHY_REPORT_QUALIFIED_MODULES);

  if (report_init)
   desc.params.external.param0 |=
   cpu_to_le32(I40E_AQ_PHY_REPORT_INITIAL_VALUES);

  status = i40e_asq_send_command(hw, &desc, abilities,
            abilities_size, cmd_details);

  switch (hw->aq.asq_last_status) {
  case 128:
   status = I40E_ERR_UNKNOWN_PHY;
   break;
  case 129:
   usleep_range(1000, 2000);
   total_delay++;
   status = I40E_ERR_TIMEOUT;
   break;

  default:
   break;
  }

 } while ((hw->aq.asq_last_status == 129) &&
  (total_delay < max_delay));

 if (status)
  return status;

 if (report_init) {
  if (hw->mac.type == I40E_MAC_XL710 &&
      hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
      hw->aq.api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_XL710) {
   status = i40e_aq_get_link_info(hw, 1, ((void*)0), ((void*)0));
  } else {
   hw->phy.phy_types = le32_to_cpu(abilities->phy_type);
   hw->phy.phy_types |=
     ((u64)abilities->phy_type_ext << 32);
  }
 }

 return status;
}
