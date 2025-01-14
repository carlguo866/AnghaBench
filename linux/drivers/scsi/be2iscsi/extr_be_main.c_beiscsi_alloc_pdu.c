
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct sgl_handle {scalar_t__ sgl_index; } ;
struct iscsi_task {int hdr_max; scalar_t__ sc; struct iscsi_hdr* hdr; scalar_t__ itt; struct iscsi_conn* conn; struct beiscsi_io_task* dd_data; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {struct beiscsi_conn* dd_data; } ;
struct hwi_wrb_context {int dummy; } ;
struct hwi_controller {struct hwi_wrb_context* wrb_context; } ;
struct beiscsi_session {int bhs_pool; } ;
struct TYPE_9__ {int address; } ;
struct TYPE_10__ {TYPE_2__ a64; } ;
struct TYPE_11__ {TYPE_3__ u; } ;
struct beiscsi_io_task {TYPE_6__* cmd_bhs; TYPE_4__ bhs_pa; TYPE_5__* pwrb_handle; struct sgl_handle* psgl_handle; int pwrb_context; int * scsi_cmnd; struct beiscsi_conn* conn; void* libiscsi_itt; } ;
struct beiscsi_hba {struct hwi_controller* phwi_ctrlr; } ;
struct beiscsi_conn {int login_in_progress; int beiscsi_conn_cid; TYPE_5__* plogin_wrb_handle; struct sgl_handle* plogin_sgl_handle; struct iscsi_task* task; struct beiscsi_session* beiscsi_sess; struct beiscsi_hba* phba; } ;
struct be_cmd_bhs {int dummy; } ;
typedef void* itt_t ;
typedef int dma_addr_t ;
struct TYPE_8__ {void* itt; } ;
struct TYPE_13__ {TYPE_1__ iscsi_hdr; } ;
struct TYPE_12__ {struct iscsi_task* pio_handle; scalar_t__ wrb_index; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_IO ;
 size_t BE_GET_CRI_FROM_CID (int ) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int ISCSI_OPCODE_MASK ;
 int ISCSI_OP_LOGIN ;
 int KERN_ERR ;
 struct sgl_handle* alloc_io_sgl_handle (struct beiscsi_hba*) ;
 struct sgl_handle* alloc_mgmt_sgl_handle (struct beiscsi_hba*) ;
 void* alloc_wrb_handle (struct beiscsi_hba*,int ,int *) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*,int ) ;
 scalar_t__ cpu_to_be32 (unsigned int) ;
 TYPE_6__* dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,TYPE_6__*,int ) ;
 int free_io_sgl_handle (struct beiscsi_hba*,struct sgl_handle*) ;
 int free_mgmt_sgl_handle (struct beiscsi_hba*,struct sgl_handle*) ;
 int free_wrb_handle (struct beiscsi_hba*,struct hwi_wrb_context*,TYPE_5__*) ;

__attribute__((used)) static int beiscsi_alloc_pdu(struct iscsi_task *task, uint8_t opcode)
{
 struct beiscsi_io_task *io_task = task->dd_data;
 struct iscsi_conn *conn = task->conn;
 struct beiscsi_conn *beiscsi_conn = conn->dd_data;
 struct beiscsi_hba *phba = beiscsi_conn->phba;
 struct hwi_wrb_context *pwrb_context;
 struct hwi_controller *phwi_ctrlr;
 itt_t itt;
 uint16_t cri_index = 0;
 struct beiscsi_session *beiscsi_sess = beiscsi_conn->beiscsi_sess;
 dma_addr_t paddr;

 io_task->cmd_bhs = dma_pool_alloc(beiscsi_sess->bhs_pool,
       GFP_ATOMIC, &paddr);
 if (!io_task->cmd_bhs)
  return -ENOMEM;
 io_task->bhs_pa.u.a64.address = paddr;
 io_task->libiscsi_itt = (itt_t)task->itt;
 io_task->conn = beiscsi_conn;

 task->hdr = (struct iscsi_hdr *)&io_task->cmd_bhs->iscsi_hdr;
 task->hdr_max = sizeof(struct be_cmd_bhs);
 io_task->psgl_handle = ((void*)0);
 io_task->pwrb_handle = ((void*)0);

 if (task->sc) {
  io_task->psgl_handle = alloc_io_sgl_handle(phba);
  if (!io_task->psgl_handle) {
   beiscsi_log(phba, KERN_ERR,
        BEISCSI_LOG_IO | BEISCSI_LOG_CONFIG,
        "BM_%d : Alloc of IO_SGL_ICD Failed"
        "for the CID : %d\n",
        beiscsi_conn->beiscsi_conn_cid);
   goto free_hndls;
  }
  io_task->pwrb_handle = alloc_wrb_handle(phba,
     beiscsi_conn->beiscsi_conn_cid,
     &io_task->pwrb_context);
  if (!io_task->pwrb_handle) {
   beiscsi_log(phba, KERN_ERR,
        BEISCSI_LOG_IO | BEISCSI_LOG_CONFIG,
        "BM_%d : Alloc of WRB_HANDLE Failed"
        "for the CID : %d\n",
        beiscsi_conn->beiscsi_conn_cid);
   goto free_io_hndls;
  }
 } else {
  io_task->scsi_cmnd = ((void*)0);
  if ((opcode & ISCSI_OPCODE_MASK) == ISCSI_OP_LOGIN) {
   beiscsi_conn->task = task;
   if (!beiscsi_conn->login_in_progress) {
    io_task->psgl_handle = (struct sgl_handle *)
      alloc_mgmt_sgl_handle(phba);
    if (!io_task->psgl_handle) {
     beiscsi_log(phba, KERN_ERR,
          BEISCSI_LOG_IO |
          BEISCSI_LOG_CONFIG,
          "BM_%d : Alloc of MGMT_SGL_ICD Failed"
          "for the CID : %d\n",
          beiscsi_conn->
          beiscsi_conn_cid);
     goto free_hndls;
    }

    beiscsi_conn->login_in_progress = 1;
    beiscsi_conn->plogin_sgl_handle =
       io_task->psgl_handle;
    io_task->pwrb_handle =
     alloc_wrb_handle(phba,
     beiscsi_conn->beiscsi_conn_cid,
     &io_task->pwrb_context);
    if (!io_task->pwrb_handle) {
     beiscsi_log(phba, KERN_ERR,
          BEISCSI_LOG_IO |
          BEISCSI_LOG_CONFIG,
          "BM_%d : Alloc of WRB_HANDLE Failed"
          "for the CID : %d\n",
          beiscsi_conn->
          beiscsi_conn_cid);
     goto free_mgmt_hndls;
    }
    beiscsi_conn->plogin_wrb_handle =
       io_task->pwrb_handle;

   } else {
    io_task->psgl_handle =
      beiscsi_conn->plogin_sgl_handle;
    io_task->pwrb_handle =
      beiscsi_conn->plogin_wrb_handle;
   }
  } else {
   io_task->psgl_handle = alloc_mgmt_sgl_handle(phba);
   if (!io_task->psgl_handle) {
    beiscsi_log(phba, KERN_ERR,
         BEISCSI_LOG_IO |
         BEISCSI_LOG_CONFIG,
         "BM_%d : Alloc of MGMT_SGL_ICD Failed"
         "for the CID : %d\n",
         beiscsi_conn->
         beiscsi_conn_cid);
    goto free_hndls;
   }
   io_task->pwrb_handle =
     alloc_wrb_handle(phba,
     beiscsi_conn->beiscsi_conn_cid,
     &io_task->pwrb_context);
   if (!io_task->pwrb_handle) {
    beiscsi_log(phba, KERN_ERR,
         BEISCSI_LOG_IO | BEISCSI_LOG_CONFIG,
         "BM_%d : Alloc of WRB_HANDLE Failed"
         "for the CID : %d\n",
         beiscsi_conn->beiscsi_conn_cid);
    goto free_mgmt_hndls;
   }

  }
 }
 itt = (itt_t) cpu_to_be32(((unsigned int)io_task->pwrb_handle->
     wrb_index << 16) | (unsigned int)
    (io_task->psgl_handle->sgl_index));
 io_task->pwrb_handle->pio_handle = task;

 io_task->cmd_bhs->iscsi_hdr.itt = itt;
 return 0;

free_io_hndls:
 free_io_sgl_handle(phba, io_task->psgl_handle);
 goto free_hndls;
free_mgmt_hndls:
 free_mgmt_sgl_handle(phba, io_task->psgl_handle);
 io_task->psgl_handle = ((void*)0);
free_hndls:
 phwi_ctrlr = phba->phwi_ctrlr;
 cri_index = BE_GET_CRI_FROM_CID(
 beiscsi_conn->beiscsi_conn_cid);
 pwrb_context = &phwi_ctrlr->wrb_context[cri_index];
 if (io_task->pwrb_handle)
  free_wrb_handle(phba, pwrb_context, io_task->pwrb_handle);
 io_task->pwrb_handle = ((void*)0);
 dma_pool_free(beiscsi_sess->bhs_pool, io_task->cmd_bhs,
        io_task->bhs_pa.u.a64.address);
 io_task->cmd_bhs = ((void*)0);
 return -ENOMEM;
}
