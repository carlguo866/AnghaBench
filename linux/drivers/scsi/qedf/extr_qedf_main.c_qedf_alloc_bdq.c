
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_8__ {void* lo; scalar_t__ hi; } ;
struct TYPE_9__ {TYPE_3__ fcoe_opaque; } ;
struct TYPE_6__ {void* lo; void* hi; } ;
struct scsi_bd {TYPE_4__ opaque; TYPE_1__ address; } ;
struct qedf_ctx {int bdq_pbl_mem_size; int bdq_pbl_dma; int bdq_pbl_list_dma; int bdq_pbl_list_num_entries; void* bdq_pbl_list; int dbg_ctx; TYPE_5__* pdev; TYPE_2__* bdq; void* bdq_pbl; } ;
typedef int dma_addr_t ;
struct TYPE_10__ {int dev; } ;
struct TYPE_7__ {int buf_dma; void* buf_addr; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QEDF_BDQ_BUF_SIZE ;
 int QEDF_BDQ_SIZE ;
 int QEDF_ERR (int *,char*,...) ;
 int QEDF_INFO (int *,int ,char*,void*,int*) ;
 int QEDF_LOG_DISC ;
 int QEDF_PAGE_SIZE ;
 int U64_HI (int) ;
 int U64_LO (int) ;
 void* cpu_to_le32 (int) ;
 void* dma_alloc_coherent (int *,int,int*,int ) ;

__attribute__((used)) static int qedf_alloc_bdq(struct qedf_ctx *qedf)
{
 int i;
 struct scsi_bd *pbl;
 u64 *list;
 dma_addr_t page;


 for (i = 0; i < QEDF_BDQ_SIZE; i++) {
  qedf->bdq[i].buf_addr = dma_alloc_coherent(&qedf->pdev->dev,
      QEDF_BDQ_BUF_SIZE, &qedf->bdq[i].buf_dma, GFP_KERNEL);
  if (!qedf->bdq[i].buf_addr) {
   QEDF_ERR(&(qedf->dbg_ctx), "Could not allocate BDQ "
       "buffer %d.\n", i);
   return -ENOMEM;
  }
 }


 qedf->bdq_pbl_mem_size =
     QEDF_BDQ_SIZE * sizeof(struct scsi_bd);
 qedf->bdq_pbl_mem_size =
     ALIGN(qedf->bdq_pbl_mem_size, QEDF_PAGE_SIZE);

 qedf->bdq_pbl = dma_alloc_coherent(&qedf->pdev->dev,
     qedf->bdq_pbl_mem_size, &qedf->bdq_pbl_dma, GFP_KERNEL);
 if (!qedf->bdq_pbl) {
  QEDF_ERR(&(qedf->dbg_ctx), "Could not allocate BDQ PBL.\n");
  return -ENOMEM;
 }

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
    "BDQ PBL addr=0x%p dma=%pad\n",
    qedf->bdq_pbl, &qedf->bdq_pbl_dma);





 pbl = (struct scsi_bd *)qedf->bdq_pbl;
 for (i = 0; i < QEDF_BDQ_SIZE; i++) {
  pbl->address.hi = cpu_to_le32(U64_HI(qedf->bdq[i].buf_dma));
  pbl->address.lo = cpu_to_le32(U64_LO(qedf->bdq[i].buf_dma));
  pbl->opaque.fcoe_opaque.hi = 0;

  pbl->opaque.fcoe_opaque.lo = cpu_to_le32(i);
  pbl++;
 }


 qedf->bdq_pbl_list = dma_alloc_coherent(&qedf->pdev->dev,
      QEDF_PAGE_SIZE,
      &qedf->bdq_pbl_list_dma,
      GFP_KERNEL);
 if (!qedf->bdq_pbl_list) {
  QEDF_ERR(&(qedf->dbg_ctx), "Could not allocate list of PBL pages.\n");
  return -ENOMEM;
 }





 qedf->bdq_pbl_list_num_entries = qedf->bdq_pbl_mem_size /
     QEDF_PAGE_SIZE;
 list = (u64 *)qedf->bdq_pbl_list;
 page = qedf->bdq_pbl_list_dma;
 for (i = 0; i < qedf->bdq_pbl_list_num_entries; i++) {
  *list = qedf->bdq_pbl_dma;
  list++;
  page += QEDF_PAGE_SIZE;
 }

 return 0;
}
