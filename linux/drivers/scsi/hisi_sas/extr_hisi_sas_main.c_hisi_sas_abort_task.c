
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct scsi_lun {int scsi_lun; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct sas_task {int task_state_flags; int task_proto; struct hisi_sas_slot* lldd_task; struct domain_device* dev; struct scsi_cmnd* uldd_task; int task_state_lock; } ;
struct hisi_sas_tmf_task {int tag_of_task_to_be_managed; int tmf; } ;
struct hisi_sas_slot {size_t dlvry_queue; int * task; int idx; } ;
struct hisi_sas_device {int dummy; } ;
struct hisi_sas_cq {int tasklet; } ;
struct hisi_hba {struct hisi_sas_cq* cq; struct device* dev; } ;
struct domain_device {scalar_t__ dev_type; struct hisi_sas_device* lldd_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int lun; } ;


 int HISI_SAS_INT_ABT_CMD ;
 int HISI_SAS_INT_ABT_DEV ;
 int SAS_PROTOCOL_SATA ;
 int SAS_PROTOCOL_SMP ;
 int SAS_PROTOCOL_SSP ;
 int SAS_PROTOCOL_STP ;
 scalar_t__ SAS_SATA_DEV ;
 int SAS_TASK_STATE_ABORTED ;
 int SAS_TASK_STATE_DONE ;
 int TMF_ABORT_TASK ;
 int TMF_RESP_FUNC_COMPLETE ;
 int TMF_RESP_FUNC_FAILED ;
 int TMF_RESP_FUNC_SUCC ;
 int dev_err (struct device*,char*,...) ;
 int dev_notice (struct device*,char*,int) ;
 struct hisi_hba* dev_to_hisi_hba (struct domain_device*) ;
 int hisi_sas_debug_issue_ssp_tmf (struct domain_device*,int ,struct hisi_sas_tmf_task*) ;
 int hisi_sas_dereg_device (struct hisi_hba*,struct domain_device*) ;
 int hisi_sas_do_release_task (struct hisi_hba*,struct sas_task*,struct hisi_sas_slot*) ;
 int hisi_sas_internal_task_abort (struct hisi_hba*,struct domain_device*,int ,int ) ;
 int hisi_sas_softreset_ata_disk (struct domain_device*) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int hisi_sas_abort_task(struct sas_task *task)
{
 struct scsi_lun lun;
 struct hisi_sas_tmf_task tmf_task;
 struct domain_device *device = task->dev;
 struct hisi_sas_device *sas_dev = device->lldd_dev;
 struct hisi_hba *hisi_hba;
 struct device *dev;
 int rc = TMF_RESP_FUNC_FAILED;
 unsigned long flags;

 if (!sas_dev)
  return TMF_RESP_FUNC_FAILED;

 hisi_hba = dev_to_hisi_hba(task->dev);
 dev = hisi_hba->dev;

 spin_lock_irqsave(&task->task_state_lock, flags);
 if (task->task_state_flags & SAS_TASK_STATE_DONE) {
  struct hisi_sas_slot *slot = task->lldd_task;
  struct hisi_sas_cq *cq;

  if (slot) {




   cq = &hisi_hba->cq[slot->dlvry_queue];
   tasklet_kill(&cq->tasklet);
  }
  spin_unlock_irqrestore(&task->task_state_lock, flags);
  rc = TMF_RESP_FUNC_COMPLETE;
  goto out;
 }
 task->task_state_flags |= SAS_TASK_STATE_ABORTED;
 spin_unlock_irqrestore(&task->task_state_lock, flags);

 if (task->lldd_task && task->task_proto & SAS_PROTOCOL_SSP) {
  struct scsi_cmnd *cmnd = task->uldd_task;
  struct hisi_sas_slot *slot = task->lldd_task;
  u16 tag = slot->idx;
  int rc2;

  int_to_scsilun(cmnd->device->lun, &lun);
  tmf_task.tmf = TMF_ABORT_TASK;
  tmf_task.tag_of_task_to_be_managed = tag;

  rc = hisi_sas_debug_issue_ssp_tmf(task->dev, lun.scsi_lun,
        &tmf_task);

  rc2 = hisi_sas_internal_task_abort(hisi_hba, device,
         HISI_SAS_INT_ABT_CMD, tag);
  if (rc2 < 0) {
   dev_err(dev, "abort task: internal abort (%d)\n", rc2);
   return TMF_RESP_FUNC_FAILED;
  }
  if (rc == TMF_RESP_FUNC_COMPLETE && rc2 != TMF_RESP_FUNC_SUCC) {
   if (task->lldd_task)
    hisi_sas_do_release_task(hisi_hba, task, slot);
  }
 } else if (task->task_proto & SAS_PROTOCOL_SATA ||
  task->task_proto & SAS_PROTOCOL_STP) {
  if (task->dev->dev_type == SAS_SATA_DEV) {
   rc = hisi_sas_internal_task_abort(hisi_hba, device,
         HISI_SAS_INT_ABT_DEV,
         0);
   if (rc < 0) {
    dev_err(dev, "abort task: internal abort failed\n");
    goto out;
   }
   hisi_sas_dereg_device(hisi_hba, device);
   rc = hisi_sas_softreset_ata_disk(device);
  }
 } else if (task->lldd_task && task->task_proto & SAS_PROTOCOL_SMP) {

  struct hisi_sas_slot *slot = task->lldd_task;
  u32 tag = slot->idx;
  struct hisi_sas_cq *cq = &hisi_hba->cq[slot->dlvry_queue];

  rc = hisi_sas_internal_task_abort(hisi_hba, device,
        HISI_SAS_INT_ABT_CMD, tag);
  if (((rc < 0) || (rc == TMF_RESP_FUNC_FAILED)) &&
     task->lldd_task) {




   tasklet_kill(&cq->tasklet);
   slot->task = ((void*)0);
  }
 }

out:
 if (rc != TMF_RESP_FUNC_COMPLETE)
  dev_notice(dev, "abort task: rc=%d\n", rc);
 return rc;
}
