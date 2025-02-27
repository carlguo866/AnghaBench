
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct audio_in {int type; } ;
typedef int cmd ;
struct TYPE_4__ {int type_0; scalar_t__ type_1; int cmd_id; } ;
typedef TYPE_1__ audrec_cmd_cfg ;


 int AUDREC_CMD_CFG ;
 int AUDREC_CMD_TYPE_0_DIS ;
 int AUDREC_CMD_TYPE_0_ENA ;
 int AUDREC_CMD_TYPE_0_UPDATE ;
 int audio_send_queue_rec (struct audio_in*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int audio_in_dsp_enable(struct audio_in *audio, int enable)
{
 audrec_cmd_cfg cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.cmd_id = AUDREC_CMD_CFG;
 cmd.type_0 = enable ? AUDREC_CMD_TYPE_0_ENA : AUDREC_CMD_TYPE_0_DIS;
 cmd.type_0 |= (AUDREC_CMD_TYPE_0_UPDATE | audio->type);
 cmd.type_1 = 0;

 return audio_send_queue_rec(audio, &cmd, sizeof(cmd));
}
