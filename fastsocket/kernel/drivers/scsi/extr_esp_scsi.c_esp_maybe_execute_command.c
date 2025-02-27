
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct scsi_device {int id; int lun; struct esp_lun_data* hostdata; } ;
struct scsi_cmnd {int cmd_len; int * cmnd; struct scsi_device* device; } ;
struct esp_target_data {int flags; scalar_t__ nego_goal_period; scalar_t__ nego_goal_offset; scalar_t__ nego_goal_width; int starget; scalar_t__ nego_goal_tags; } ;
struct esp_lun_data {int dummy; } ;
struct esp_cmd_entry {int flags; scalar_t__* tag; int list; struct scsi_cmnd* cmd; } ;
struct esp {int flags; int msg_out_len; scalar_t__ rev; int cmd_bytes_left; int command_block_dma; TYPE_1__* ops; int * command_block; int select_state; scalar_t__* msg_out; int * cmd_bytes_ptr; struct esp_cmd_entry* active_cmd; int active_cmds; struct esp_target_data* target; } ;
struct TYPE_2__ {int (* send_dma_cmd ) (struct esp*,int ,int,int,int ,int) ;} ;


 scalar_t__ ESP100 ;
 int ESP_BUSID ;
 int ESP_BUSID_CTR32BIT ;
 int ESP_BUSID_RESELID ;
 int ESP_CMD_DMA ;
 int ESP_CMD_FLAG_AUTOSENSE ;
 int ESP_CMD_FLUSH ;
 int ESP_CMD_SA3 ;
 int ESP_CMD_SELA ;
 int ESP_CMD_SELAS ;
 int ESP_DEBUG_SCSICMD ;
 int ESP_FLAG_DOING_SLOWCMD ;
 int ESP_FLAG_RESETTING ;
 int ESP_SELECT_BASIC ;
 int ESP_SELECT_MSGOUT ;
 int ESP_TGT_BROKEN ;
 int ESP_TGT_CHECK_NEGO ;
 int ESP_TGT_DISCONNECT ;
 int ESP_TGT_NEGO_SYNC ;
 int ESP_TGT_NEGO_WIDE ;
 scalar_t__ FASHME ;
 void* IDENTIFY (int,int) ;
 int esp_autosense (struct esp*,struct esp_cmd_entry*) ;
 int esp_check_command_len (struct esp*,struct scsi_cmnd*) ;
 int esp_debug ;
 int esp_map_dma (struct esp*,struct scsi_cmnd*) ;
 scalar_t__ esp_need_to_nego_sync (struct esp_target_data*) ;
 scalar_t__ esp_need_to_nego_wide (struct esp_target_data*) ;
 int esp_save_pointers (struct esp*,struct esp_cmd_entry*) ;
 int esp_write8 (int,int ) ;
 int esp_write_tgt_config3 (struct esp*,int) ;
 int esp_write_tgt_sync (struct esp*,int) ;
 struct esp_cmd_entry* find_and_prep_issuable_command (struct esp*) ;
 int list_move (int *,int *) ;
 int printk (char*,...) ;
 int scsi_esp_cmd (struct esp*,int ) ;
 scalar_t__ spi_offset (int ) ;
 scalar_t__ spi_period (int ) ;
 int spi_populate_sync_msg (scalar_t__*,scalar_t__,scalar_t__) ;
 int spi_populate_width_msg (scalar_t__*,int) ;
 scalar_t__ spi_width (int ) ;
 int stub1 (struct esp*,int ,int,int,int ,int) ;

__attribute__((used)) static void esp_maybe_execute_command(struct esp *esp)
{
 struct esp_target_data *tp;
 struct esp_lun_data *lp;
 struct scsi_device *dev;
 struct scsi_cmnd *cmd;
 struct esp_cmd_entry *ent;
 int tgt, lun, i;
 u32 val, start_cmd;
 u8 *p;

 if (esp->active_cmd ||
     (esp->flags & ESP_FLAG_RESETTING))
  return;

 ent = find_and_prep_issuable_command(esp);
 if (!ent)
  return;

 if (ent->flags & ESP_CMD_FLAG_AUTOSENSE) {
  esp_autosense(esp, ent);
  return;
 }

 cmd = ent->cmd;
 dev = cmd->device;
 tgt = dev->id;
 lun = dev->lun;
 tp = &esp->target[tgt];
 lp = dev->hostdata;

 list_move(&ent->list, &esp->active_cmds);

 esp->active_cmd = ent;

 esp_map_dma(esp, cmd);
 esp_save_pointers(esp, ent);

 esp_check_command_len(esp, cmd);

 p = esp->command_block;

 esp->msg_out_len = 0;
 if (tp->flags & ESP_TGT_CHECK_NEGO) {



  if (tp->flags & ESP_TGT_BROKEN) {
   tp->flags &= ~ESP_TGT_DISCONNECT;
   tp->nego_goal_period = 0;
   tp->nego_goal_offset = 0;
   tp->nego_goal_width = 0;
   tp->nego_goal_tags = 0;
  }


  if (spi_width(tp->starget) == tp->nego_goal_width &&
      spi_period(tp->starget) == tp->nego_goal_period &&
      spi_offset(tp->starget) == tp->nego_goal_offset) {
   tp->flags &= ~ESP_TGT_CHECK_NEGO;
   goto build_identify;
  }

  if (esp->rev == FASHME && esp_need_to_nego_wide(tp)) {
   esp->msg_out_len =
    spi_populate_width_msg(&esp->msg_out[0],
             (tp->nego_goal_width ?
       1 : 0));
   tp->flags |= ESP_TGT_NEGO_WIDE;
  } else if (esp_need_to_nego_sync(tp)) {
   esp->msg_out_len =
    spi_populate_sync_msg(&esp->msg_out[0],
            tp->nego_goal_period,
            tp->nego_goal_offset);
   tp->flags |= ESP_TGT_NEGO_SYNC;
  } else {
   tp->flags &= ~ESP_TGT_CHECK_NEGO;
  }


  if (tp->flags & (ESP_TGT_NEGO_WIDE | ESP_TGT_NEGO_SYNC))
   esp->flags |= ESP_FLAG_DOING_SLOWCMD;
 }

build_identify:




 if (lp && (tp->flags & ESP_TGT_DISCONNECT) && ent->tag[0])
  *p++ = IDENTIFY(1, lun);
 else
  *p++ = IDENTIFY(0, lun);

 if (ent->tag[0] && esp->rev == ESP100) {



  esp->flags |= ESP_FLAG_DOING_SLOWCMD;
 }

 if (!(esp->flags & ESP_FLAG_DOING_SLOWCMD)) {
  start_cmd = ESP_CMD_DMA | ESP_CMD_SELA;
  if (ent->tag[0]) {
   *p++ = ent->tag[0];
   *p++ = ent->tag[1];

   start_cmd = ESP_CMD_DMA | ESP_CMD_SA3;
  }

  for (i = 0; i < cmd->cmd_len; i++)
   *p++ = cmd->cmnd[i];

  esp->select_state = ESP_SELECT_BASIC;
 } else {
  esp->cmd_bytes_left = cmd->cmd_len;
  esp->cmd_bytes_ptr = &cmd->cmnd[0];

  if (ent->tag[0]) {
   for (i = esp->msg_out_len - 1;
        i >= 0; i--)
    esp->msg_out[i + 2] = esp->msg_out[i];
   esp->msg_out[0] = ent->tag[0];
   esp->msg_out[1] = ent->tag[1];
   esp->msg_out_len += 2;
  }

  start_cmd = ESP_CMD_DMA | ESP_CMD_SELAS;
  esp->select_state = ESP_SELECT_MSGOUT;
 }
 val = tgt;
 if (esp->rev == FASHME)
  val |= ESP_BUSID_RESELID | ESP_BUSID_CTR32BIT;
 esp_write8(val, ESP_BUSID);

 esp_write_tgt_sync(esp, tgt);
 esp_write_tgt_config3(esp, tgt);

 val = (p - esp->command_block);

 if (esp_debug & ESP_DEBUG_SCSICMD) {
  printk("ESP: tgt[%d] lun[%d] scsi_cmd [ ", tgt, lun);
  for (i = 0; i < cmd->cmd_len; i++)
   printk("%02x ", cmd->cmnd[i]);
  printk("]\n");
 }

 if (esp->rev == FASHME)
  scsi_esp_cmd(esp, ESP_CMD_FLUSH);
 esp->ops->send_dma_cmd(esp, esp->command_block_dma,
          val, 16, 0, start_cmd);
}
