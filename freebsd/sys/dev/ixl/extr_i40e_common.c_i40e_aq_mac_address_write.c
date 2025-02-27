
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_mac_address_write {int mac_sal; void* mac_sah; void* command_flags; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 void* CPU_TO_LE16 (int) ;
 int CPU_TO_LE32 (int) ;
 int i40e_aqc_opc_mac_address_write ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_mac_address_write(struct i40e_hw *hw,
        u16 flags, u8 *mac_addr,
        struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_mac_address_write *cmd_data =
  (struct i40e_aqc_mac_address_write *)&desc.params.raw;
 enum i40e_status_code status;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_mac_address_write);
 cmd_data->command_flags = CPU_TO_LE16(flags);
 cmd_data->mac_sah = CPU_TO_LE16((u16)mac_addr[0] << 8 | mac_addr[1]);
 cmd_data->mac_sal = CPU_TO_LE32(((u32)mac_addr[2] << 24) |
     ((u32)mac_addr[3] << 16) |
     ((u32)mac_addr[4] << 8) |
     mac_addr[5]);

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 return status;
}
