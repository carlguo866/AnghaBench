
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mxl {int i2cdev; } ;
struct MXL_HYDRA_TUNER_CMD {int tuner_id; int enable; } ;
typedef int ctrl_tuner_cmd ;


 int BUILD_HYDRA_CMD (int ,int ,int,struct MXL_HYDRA_TUNER_CMD*,int*) ;
 int HYDRA_TUNER_ENABLE_COMPLETE ;
 int MXL_CMD_WRITE ;
 int MXL_HYDRA_CMD_HEADER_SIZE ;
 int MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN ;
 int MXL_HYDRA_TUNER_ACTIVATE_CMD ;
 int dev_dbg (int ,char*,int,int) ;
 int msleep (int) ;
 int read_register (struct mxl*,int ,int*) ;
 int send_command (struct mxl*,int,int*) ;

__attribute__((used)) static int enable_tuner(struct mxl *state, u32 tuner, u32 enable)
{
 int stat = 0;
 struct MXL_HYDRA_TUNER_CMD ctrl_tuner_cmd;
 u8 cmd_size = sizeof(ctrl_tuner_cmd);
 u8 cmd_buff[MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN];
 u32 val, count = 10;

 ctrl_tuner_cmd.tuner_id = tuner;
 ctrl_tuner_cmd.enable = enable;
 BUILD_HYDRA_CMD(MXL_HYDRA_TUNER_ACTIVATE_CMD, MXL_CMD_WRITE,
   cmd_size, &ctrl_tuner_cmd, cmd_buff);
 stat = send_command(state, cmd_size + MXL_HYDRA_CMD_HEADER_SIZE,
       &cmd_buff[0]);
 if (stat)
  return stat;
 read_register(state, HYDRA_TUNER_ENABLE_COMPLETE, &val);
 while (--count && ((val >> tuner) & 1) != enable) {
  msleep(20);
  read_register(state, HYDRA_TUNER_ENABLE_COMPLETE, &val);
 }
 if (!count)
  return -1;
 read_register(state, HYDRA_TUNER_ENABLE_COMPLETE, &val);
 dev_dbg(state->i2cdev, "tuner %u ready = %u\n",
  tuner, (val >> tuner) & 1);

 return 0;
}
