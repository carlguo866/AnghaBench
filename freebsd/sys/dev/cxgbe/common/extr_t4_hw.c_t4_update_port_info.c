
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_info {int tx_chan; struct adapter* adapter; } ;
struct fw_port_cmd {void* action_to_len16; void* op_to_portid; } ;
struct TYPE_2__ {scalar_t__ port_caps32; } ;
struct adapter {int mbox; TYPE_1__ params; } ;
typedef enum fw_port_action { ____Placeholder_fw_port_action } fw_port_action ;
typedef int cmd ;


 int FW_LEN16 (struct fw_port_cmd) ;
 int FW_PORT_ACTION_GET_PORT_INFO ;
 int FW_PORT_ACTION_GET_PORT_INFO32 ;
 int FW_PORT_CMD ;
 int F_FW_CMD_READ ;
 int F_FW_CMD_REQUEST ;
 int V_FW_CMD_OP (int ) ;
 int V_FW_PORT_CMD_ACTION (int) ;
 int V_FW_PORT_CMD_PORTID (int ) ;
 void* cpu_to_be32 (int) ;
 int handle_port_info (struct port_info*,struct fw_port_cmd*,int,int *,int *) ;
 int memset (struct fw_port_cmd*,int ,int) ;
 int t4_wr_mbox_ns (struct adapter*,int ,struct fw_port_cmd*,int,struct fw_port_cmd*) ;

int t4_update_port_info(struct port_info *pi)
 {
 struct adapter *sc = pi->adapter;
 struct fw_port_cmd cmd;
 enum fw_port_action action;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_portid = cpu_to_be32(V_FW_CMD_OP(FW_PORT_CMD) |
     F_FW_CMD_REQUEST | F_FW_CMD_READ |
     V_FW_PORT_CMD_PORTID(pi->tx_chan));
 action = sc->params.port_caps32 ? FW_PORT_ACTION_GET_PORT_INFO32 :
     FW_PORT_ACTION_GET_PORT_INFO;
 cmd.action_to_len16 = cpu_to_be32(V_FW_PORT_CMD_ACTION(action) |
     FW_LEN16(cmd));
 ret = t4_wr_mbox_ns(sc, sc->mbox, &cmd, sizeof(cmd), &cmd);
 if (ret)
  return ret;

 handle_port_info(pi, &cmd, action, ((void*)0), ((void*)0));
 return 0;
}
