
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct megasas_instance {int pdev; } ;
struct megasas_evt_log_info {int dummy; } ;
struct TYPE_8__ {TYPE_3__* sge32; } ;
struct TYPE_6__ {struct megasas_evt_log_info* b; } ;
struct megasas_dcmd_frame {int cmd_status; int sge_count; int data_xfer_len; TYPE_4__ sgl; int opcode; scalar_t__ pad_0; scalar_t__ timeout; int flags; int cmd; TYPE_2__ mbox; } ;
struct megasas_cmd {TYPE_1__* frame; } ;
typedef int dma_addr_t ;
struct TYPE_7__ {int length; int phys_addr; } ;
struct TYPE_5__ {struct megasas_dcmd_frame dcmd; } ;


 int ENOMEM ;
 int MFI_CMD_DCMD ;
 int MFI_FRAME_DIR_READ ;
 int MFI_MBOX_SIZE ;
 int MR_DCMD_CTRL_EVENT_GET_INFO ;
 struct megasas_cmd* megasas_get_cmd (struct megasas_instance*) ;
 int megasas_issue_blocked_cmd (struct megasas_instance*,struct megasas_cmd*) ;
 int megasas_return_cmd (struct megasas_instance*,struct megasas_cmd*) ;
 int memcpy (struct megasas_evt_log_info*,struct megasas_evt_log_info*,int) ;
 int memset (struct megasas_evt_log_info*,int ,int) ;
 struct megasas_evt_log_info* pci_alloc_consistent (int ,int,int *) ;
 int pci_free_consistent (int ,int,struct megasas_evt_log_info*,int ) ;

__attribute__((used)) static int
megasas_get_seq_num(struct megasas_instance *instance,
      struct megasas_evt_log_info *eli)
{
 struct megasas_cmd *cmd;
 struct megasas_dcmd_frame *dcmd;
 struct megasas_evt_log_info *el_info;
 dma_addr_t el_info_h = 0;

 cmd = megasas_get_cmd(instance);

 if (!cmd) {
  return -ENOMEM;
 }

 dcmd = &cmd->frame->dcmd;
 el_info = pci_alloc_consistent(instance->pdev,
           sizeof(struct megasas_evt_log_info),
           &el_info_h);

 if (!el_info) {
  megasas_return_cmd(instance, cmd);
  return -ENOMEM;
 }

 memset(el_info, 0, sizeof(*el_info));
 memset(dcmd->mbox.b, 0, MFI_MBOX_SIZE);

 dcmd->cmd = MFI_CMD_DCMD;
 dcmd->cmd_status = 0x0;
 dcmd->sge_count = 1;
 dcmd->flags = MFI_FRAME_DIR_READ;
 dcmd->timeout = 0;
 dcmd->pad_0 = 0;
 dcmd->data_xfer_len = sizeof(struct megasas_evt_log_info);
 dcmd->opcode = MR_DCMD_CTRL_EVENT_GET_INFO;
 dcmd->sgl.sge32[0].phys_addr = el_info_h;
 dcmd->sgl.sge32[0].length = sizeof(struct megasas_evt_log_info);

 megasas_issue_blocked_cmd(instance, cmd);




 memcpy(eli, el_info, sizeof(struct megasas_evt_log_info));

 pci_free_consistent(instance->pdev, sizeof(struct megasas_evt_log_info),
       el_info, el_info_h);

 megasas_return_cmd(instance, cmd);

 return 0;
}
