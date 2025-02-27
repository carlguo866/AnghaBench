
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_rf_tx_pwr {void* action; } ;
struct TYPE_2__ {struct host_cmd_ds_rf_tx_pwr txp; } ;
struct host_cmd_ds_command {void* command; void* size; TYPE_1__ params; } ;


 scalar_t__ HostCmd_CMD_RF_TX_PWR ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__) ;

__attribute__((used)) static int mwifiex_cmd_rf_tx_power(struct mwifiex_private *priv,
       struct host_cmd_ds_command *cmd,
       u16 cmd_action, void *data_buf)
{
 struct host_cmd_ds_rf_tx_pwr *txp = &cmd->params.txp;

 cmd->size = cpu_to_le16(sizeof(struct host_cmd_ds_rf_tx_pwr)
    + S_DS_GEN);
 cmd->command = cpu_to_le16(HostCmd_CMD_RF_TX_PWR);
 txp->action = cpu_to_le16(cmd_action);

 return 0;
}
