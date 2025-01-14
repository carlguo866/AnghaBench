
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct uwb_rceb {int wEvent; void* bEventType; } ;
struct uwb_rccb {int wCommand; void* bCommandType; } ;
struct i1480 {int dev; scalar_t__ evt_buf; scalar_t__ cmd_buf; } ;


 int EIO ;
 int ENOMEM ;
 void* UWB_RC_CET_GENERAL ;
 int UWB_RC_CMD_RESET ;
 scalar_t__ UWB_RC_RES_SUCCESS ;
 int cpu_to_le16 (int ) ;
 int dev_err (int ,char*,scalar_t__) ;
 int i1480_cmd (struct i1480*,char*,int,int) ;

__attribute__((used)) static
int i1480_cmd_reset(struct i1480 *i1480)
{
 int result;
 struct uwb_rccb *cmd = (void *) i1480->cmd_buf;
 struct i1480_evt_reset {
  struct uwb_rceb rceb;
  u8 bResultCode;
 } __attribute__((packed)) *reply = (void *) i1480->evt_buf;

 result = -ENOMEM;
 cmd->bCommandType = UWB_RC_CET_GENERAL;
 cmd->wCommand = cpu_to_le16(UWB_RC_CMD_RESET);
 reply->rceb.bEventType = UWB_RC_CET_GENERAL;
 reply->rceb.wEvent = UWB_RC_CMD_RESET;
 result = i1480_cmd(i1480, "RESET", sizeof(*cmd), sizeof(*reply));
 if (result < 0)
  goto out;
 if (reply->bResultCode != UWB_RC_RES_SUCCESS) {
  dev_err(i1480->dev, "RESET: command execution failed: %u\n",
   reply->bResultCode);
  result = -EIO;
 }
out:
 return result;

}
