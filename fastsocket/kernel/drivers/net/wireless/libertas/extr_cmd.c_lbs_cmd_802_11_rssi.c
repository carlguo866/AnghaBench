
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lbs_private {scalar_t__** RSSI; scalar_t__** NF; scalar_t__** SNR; } ;
struct TYPE_3__ {void* N; } ;
struct TYPE_4__ {TYPE_1__ rssi; } ;
struct cmd_ds_command {TYPE_2__ params; void* size; void* command; } ;
struct cmd_ds_802_11_rssi {int dummy; } ;


 scalar_t__ CMD_802_11_RSSI ;
 scalar_t__ DEFAULT_BCN_AVG_FACTOR ;
 int LBS_DEB_CMD ;
 scalar_t__ S_DS_GEN ;
 size_t TYPE_AVG ;
 size_t TYPE_BEACON ;
 size_t TYPE_NOAVG ;
 void* cpu_to_le16 (scalar_t__) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;

__attribute__((used)) static int lbs_cmd_802_11_rssi(struct lbs_private *priv,
    struct cmd_ds_command *cmd)
{

 lbs_deb_enter(LBS_DEB_CMD);
 cmd->command = cpu_to_le16(CMD_802_11_RSSI);
 cmd->size = cpu_to_le16(sizeof(struct cmd_ds_802_11_rssi) + S_DS_GEN);
 cmd->params.rssi.N = cpu_to_le16(DEFAULT_BCN_AVG_FACTOR);


 priv->SNR[TYPE_BEACON][TYPE_NOAVG] = 0;
 priv->SNR[TYPE_BEACON][TYPE_AVG] = 0;
 priv->NF[TYPE_BEACON][TYPE_NOAVG] = 0;
 priv->NF[TYPE_BEACON][TYPE_AVG] = 0;
 priv->RSSI[TYPE_BEACON][TYPE_NOAVG] = 0;
 priv->RSSI[TYPE_BEACON][TYPE_AVG] = 0;

 lbs_deb_leave(LBS_DEB_CMD);
 return 0;
}
