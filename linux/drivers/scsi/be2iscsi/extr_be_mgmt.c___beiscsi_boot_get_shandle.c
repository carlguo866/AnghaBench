
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int tag; } ;
struct be_ctrl_info {int mbox_lock; TYPE_2__* ptag_state; } ;
struct beiscsi_hba {TYPE_1__ boot_struct; struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_get_boot_target_resp {int dummy; } ;
struct be_cmd_get_boot_target_req {int hdr; } ;
struct TYPE_4__ {int cbfn; int tag_state; } ;


 int CMD_SUBSYSTEM_ISCSI_INI ;
 int MCC_TAG_STATE_ASYNC ;
 int OPCODE_ISCSI_INI_BOOT_GET_BOOT_TARGET ;
 struct be_mcc_wrb* alloc_mcc_wrb (struct beiscsi_hba*,unsigned int*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify (struct beiscsi_hba*,unsigned int) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 int beiscsi_boot_process_compl ;
 struct be_cmd_get_boot_target_req* embedded_payload (struct be_mcc_wrb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

unsigned int __beiscsi_boot_get_shandle(struct beiscsi_hba *phba, int async)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb;
 struct be_cmd_get_boot_target_req *req;
 unsigned int tag;

 mutex_lock(&ctrl->mbox_lock);
 wrb = alloc_mcc_wrb(phba, &tag);
 if (!wrb) {
  mutex_unlock(&ctrl->mbox_lock);
  return 0;
 }

 req = embedded_payload(wrb);
 be_wrb_hdr_prepare(wrb, sizeof(*req), 1, 0);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI_INI,
      OPCODE_ISCSI_INI_BOOT_GET_BOOT_TARGET,
      sizeof(struct be_cmd_get_boot_target_resp));

 if (async) {
  phba->boot_struct.tag = tag;
  set_bit(MCC_TAG_STATE_ASYNC, &ctrl->ptag_state[tag].tag_state);
  ctrl->ptag_state[tag].cbfn = beiscsi_boot_process_compl;
 }

 be_mcc_notify(phba, tag);
 mutex_unlock(&ctrl->mbox_lock);
 return tag;
}
