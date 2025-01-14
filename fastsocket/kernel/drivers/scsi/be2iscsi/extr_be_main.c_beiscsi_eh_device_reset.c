
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_cmnd {int device; } ;
struct iscsi_task {scalar_t__ state; TYPE_3__* sc; struct beiscsi_io_task* dd_data; } ;
struct iscsi_session {scalar_t__ state; int lock; struct iscsi_conn* leadconn; } ;
struct iscsi_conn {TYPE_1__* session; struct beiscsi_conn* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct invalidate_commands_params_in {int dummy; } ;
struct invalidate_command_table {unsigned int cid; int icd; } ;
struct beiscsi_io_task {TYPE_4__* psgl_handle; } ;
struct TYPE_10__ {int pdev; } ;
struct beiscsi_hba {TYPE_5__ ctrl; struct invalidate_command_table* inv_tbl; } ;
struct beiscsi_conn {unsigned int beiscsi_conn_cid; struct beiscsi_hba* phba; } ;
struct be_dma_mem {int size; int dma; struct invalidate_command_table* va; } ;
struct TYPE_9__ {int sgl_index; } ;
struct TYPE_8__ {TYPE_2__* device; } ;
struct TYPE_7__ {scalar_t__ lun; } ;
struct TYPE_6__ {unsigned int cmds_max; struct iscsi_task** cmds; } ;


 int BE2_CMDS_PER_CXN ;
 int BEISCSI_LOG_EH ;
 int FAILED ;
 scalar_t__ ISCSI_STATE_LOGGED_IN ;
 scalar_t__ ISCSI_TASK_FREE ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int beiscsi_mccq_compl (struct beiscsi_hba*,unsigned int,int *,struct invalidate_command_table*) ;
 int iscsi_eh_device_reset (struct scsi_cmnd*) ;
 int memset (struct invalidate_command_table*,int,int) ;
 unsigned int mgmt_invalidate_icds (struct beiscsi_hba*,struct invalidate_command_table*,unsigned int,unsigned int,struct be_dma_mem*) ;
 struct invalidate_command_table* pci_alloc_consistent (int ,int,int *) ;
 int pci_free_consistent (int ,int,struct invalidate_command_table*,int ) ;
 int scsi_target (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct iscsi_cls_session* starget_to_session (int ) ;

__attribute__((used)) static int beiscsi_eh_device_reset(struct scsi_cmnd *sc)
{
 struct iscsi_task *abrt_task;
 struct beiscsi_io_task *abrt_io_task;
 struct iscsi_conn *conn;
 struct beiscsi_conn *beiscsi_conn;
 struct beiscsi_hba *phba;
 struct iscsi_session *session;
 struct iscsi_cls_session *cls_session;
 struct invalidate_command_table *inv_tbl;
 struct be_dma_mem nonemb_cmd;
 unsigned int cid, tag, i, num_invalidate;


 cls_session = starget_to_session(scsi_target(sc->device));
 session = cls_session->dd_data;
 spin_lock_bh(&session->lock);
 if (!session->leadconn || session->state != ISCSI_STATE_LOGGED_IN) {
  spin_unlock_bh(&session->lock);
  return FAILED;
 }
 conn = session->leadconn;
 beiscsi_conn = conn->dd_data;
 phba = beiscsi_conn->phba;
 cid = beiscsi_conn->beiscsi_conn_cid;
 inv_tbl = phba->inv_tbl;
 memset(inv_tbl, 0x0, sizeof(*inv_tbl) * BE2_CMDS_PER_CXN);
 num_invalidate = 0;
 for (i = 0; i < conn->session->cmds_max; i++) {
  abrt_task = conn->session->cmds[i];
  abrt_io_task = abrt_task->dd_data;
  if (!abrt_task->sc || abrt_task->state == ISCSI_TASK_FREE)
   continue;

  if (abrt_task->sc->device->lun != abrt_task->sc->device->lun)
   continue;

  inv_tbl->cid = cid;
  inv_tbl->icd = abrt_io_task->psgl_handle->sgl_index;
  num_invalidate++;
  inv_tbl++;
 }
 spin_unlock_bh(&session->lock);
 inv_tbl = phba->inv_tbl;

 nonemb_cmd.va = pci_alloc_consistent(phba->ctrl.pdev,
    sizeof(struct invalidate_commands_params_in),
    &nonemb_cmd.dma);
 if (nonemb_cmd.va == ((void*)0)) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_EH,
       "BM_%d : Failed to allocate memory for"
       "mgmt_invalidate_icds\n");
  return FAILED;
 }
 nonemb_cmd.size = sizeof(struct invalidate_commands_params_in);
 memset(nonemb_cmd.va, 0, nonemb_cmd.size);
 tag = mgmt_invalidate_icds(phba, inv_tbl, num_invalidate,
       cid, &nonemb_cmd);
 if (!tag) {
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_EH,
       "BM_%d : mgmt_invalidate_icds could not be"
       " submitted\n");
  pci_free_consistent(phba->ctrl.pdev, nonemb_cmd.size,
        nonemb_cmd.va, nonemb_cmd.dma);
  return FAILED;
 }

 beiscsi_mccq_compl(phba, tag, ((void*)0), nonemb_cmd.va);
 pci_free_consistent(phba->ctrl.pdev, nonemb_cmd.size,
       nonemb_cmd.va, nonemb_cmd.dma);
 return iscsi_eh_device_reset(sc);
}
