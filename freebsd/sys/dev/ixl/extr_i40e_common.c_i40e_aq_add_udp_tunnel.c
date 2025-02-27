
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_del_udp_tunnel_completion {int index; } ;
struct i40e_aqc_add_udp_tunnel {int protocol_type; int udp_port; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (int ) ;
 int i40e_aqc_opc_add_udp_tunnel ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_add_udp_tunnel(struct i40e_hw *hw,
    u16 udp_port, u8 protocol_index,
    u8 *filter_index,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_add_udp_tunnel *cmd =
  (struct i40e_aqc_add_udp_tunnel *)&desc.params.raw;
 struct i40e_aqc_del_udp_tunnel_completion *resp =
  (struct i40e_aqc_del_udp_tunnel_completion *)&desc.params.raw;
 enum i40e_status_code status;

 i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_add_udp_tunnel);

 cmd->udp_port = CPU_TO_LE16(udp_port);
 cmd->protocol_type = protocol_index;

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 if (!status && filter_index)
  *filter_index = resp->index;

 return status;
}
