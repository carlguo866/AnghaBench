
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mwifiex_private {int adapter; } ;
struct host_cmd_ds_txbuf_cfg {void* buff_size; void* action; } ;
struct TYPE_2__ {struct host_cmd_ds_txbuf_cfg tx_buf; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 int CMD ;


 int HostCmd_CMD_RECONFIGURE_TX_BUFF ;
 int S_DS_GEN ;
 void* cpu_to_le16 (int) ;
 int mwifiex_dbg (int ,int ,char*,int) ;

int mwifiex_cmd_recfg_tx_buf(struct mwifiex_private *priv,
        struct host_cmd_ds_command *cmd, int cmd_action,
        u16 *buf_size)
{
 struct host_cmd_ds_txbuf_cfg *tx_buf = &cmd->params.tx_buf;
 u16 action = (u16) cmd_action;

 cmd->command = cpu_to_le16(HostCmd_CMD_RECONFIGURE_TX_BUFF);
 cmd->size =
  cpu_to_le16(sizeof(struct host_cmd_ds_txbuf_cfg) + S_DS_GEN);
 tx_buf->action = cpu_to_le16(action);
 switch (action) {
 case 128:
  mwifiex_dbg(priv->adapter, CMD,
       "cmd: set tx_buf=%d\n", *buf_size);
  tx_buf->buff_size = cpu_to_le16(*buf_size);
  break;
 case 129:
 default:
  tx_buf->buff_size = 0;
  break;
 }
 return 0;
}
