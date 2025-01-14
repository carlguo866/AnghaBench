
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_nodelist {int dummy; } ;
struct lpfc_node_rrq {int dummy; } ;
struct lpfc_dma_pool {TYPE_1__* elements; scalar_t__ current_count; scalar_t__ max_count; } ;
struct lpfc_hba {scalar_t__ sli_rev; int cfg_sg_dma_buf_size; int * lpfc_scsi_dma_buf_pool; int * lpfc_mbuf_pool; int * mbox_mem_pool; int * nlp_mem_pool; int * rrq_pool; int * lpfc_hrb_pool; int * lpfc_drb_pool; int * lpfc_hbq_pool; int pcidev; struct lpfc_dma_pool lpfc_mbuf_safety_pool; } ;
struct lpfc_dmabuf {int dummy; } ;
struct TYPE_3__ {int phys; int virt; } ;
typedef int LPFC_MBOXQ_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LPFC_BPL_SIZE ;
 int LPFC_DATA_BUF_SIZE ;
 int LPFC_HDR_BUF_SIZE ;
 int LPFC_MBUF_POOL_SIZE ;
 int LPFC_MEM_POOL_SIZE ;
 scalar_t__ LPFC_SLI_REV4 ;
 int SLI4_PAGE_SIZE ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kmalloc (int,int ) ;
 void* mempool_create_kmalloc_pool (int ,int) ;
 int mempool_destroy (int *) ;
 int pci_pool_alloc (int *,int ,int *) ;
 void* pci_pool_create (char*,int ,int,int,int ) ;
 int pci_pool_destroy (int *) ;
 int pci_pool_free (int *,int ,int ) ;

int
lpfc_mem_alloc(struct lpfc_hba *phba, int align)
{
 struct lpfc_dma_pool *pool = &phba->lpfc_mbuf_safety_pool;
 int i;

 if (phba->sli_rev == LPFC_SLI_REV4) {

  if (phba->cfg_sg_dma_buf_size < SLI4_PAGE_SIZE)
   i = phba->cfg_sg_dma_buf_size;
  else
   i = SLI4_PAGE_SIZE;

  phba->lpfc_scsi_dma_buf_pool =
   pci_pool_create("lpfc_scsi_dma_buf_pool",
    phba->pcidev,
    phba->cfg_sg_dma_buf_size,
    i,
    0);
 } else {
  phba->lpfc_scsi_dma_buf_pool =
   pci_pool_create("lpfc_scsi_dma_buf_pool",
    phba->pcidev, phba->cfg_sg_dma_buf_size,
    align, 0);
 }

 if (!phba->lpfc_scsi_dma_buf_pool)
  goto fail;

 phba->lpfc_mbuf_pool = pci_pool_create("lpfc_mbuf_pool", phba->pcidev,
       LPFC_BPL_SIZE,
       align, 0);
 if (!phba->lpfc_mbuf_pool)
  goto fail_free_dma_buf_pool;

 pool->elements = kmalloc(sizeof(struct lpfc_dmabuf) *
      LPFC_MBUF_POOL_SIZE, GFP_KERNEL);
 if (!pool->elements)
  goto fail_free_lpfc_mbuf_pool;

 pool->max_count = 0;
 pool->current_count = 0;
 for ( i = 0; i < LPFC_MBUF_POOL_SIZE; i++) {
  pool->elements[i].virt = pci_pool_alloc(phba->lpfc_mbuf_pool,
           GFP_KERNEL, &pool->elements[i].phys);
  if (!pool->elements[i].virt)
   goto fail_free_mbuf_pool;
  pool->max_count++;
  pool->current_count++;
 }

 phba->mbox_mem_pool = mempool_create_kmalloc_pool(LPFC_MEM_POOL_SIZE,
        sizeof(LPFC_MBOXQ_t));
 if (!phba->mbox_mem_pool)
  goto fail_free_mbuf_pool;

 phba->nlp_mem_pool = mempool_create_kmalloc_pool(LPFC_MEM_POOL_SIZE,
      sizeof(struct lpfc_nodelist));
 if (!phba->nlp_mem_pool)
  goto fail_free_mbox_pool;

 if (phba->sli_rev == LPFC_SLI_REV4) {
  phba->rrq_pool =
   mempool_create_kmalloc_pool(LPFC_MEM_POOL_SIZE,
      sizeof(struct lpfc_node_rrq));
  if (!phba->rrq_pool)
   goto fail_free_nlp_mem_pool;
  phba->lpfc_hrb_pool = pci_pool_create("lpfc_hrb_pool",
           phba->pcidev,
           LPFC_HDR_BUF_SIZE, align, 0);
  if (!phba->lpfc_hrb_pool)
   goto fail_free_rrq_mem_pool;

  phba->lpfc_drb_pool = pci_pool_create("lpfc_drb_pool",
           phba->pcidev,
           LPFC_DATA_BUF_SIZE, align, 0);
  if (!phba->lpfc_drb_pool)
   goto fail_free_hrb_pool;
  phba->lpfc_hbq_pool = ((void*)0);
 } else {
  phba->lpfc_hbq_pool = pci_pool_create("lpfc_hbq_pool",
   phba->pcidev, LPFC_BPL_SIZE, align, 0);
  if (!phba->lpfc_hbq_pool)
   goto fail_free_nlp_mem_pool;
  phba->lpfc_hrb_pool = ((void*)0);
  phba->lpfc_drb_pool = ((void*)0);
 }

 return 0;
 fail_free_hrb_pool:
 pci_pool_destroy(phba->lpfc_hrb_pool);
 phba->lpfc_hrb_pool = ((void*)0);
 fail_free_rrq_mem_pool:
 mempool_destroy(phba->rrq_pool);
 phba->rrq_pool = ((void*)0);
 fail_free_nlp_mem_pool:
 mempool_destroy(phba->nlp_mem_pool);
 phba->nlp_mem_pool = ((void*)0);
 fail_free_mbox_pool:
 mempool_destroy(phba->mbox_mem_pool);
 phba->mbox_mem_pool = ((void*)0);
 fail_free_mbuf_pool:
 while (i--)
  pci_pool_free(phba->lpfc_mbuf_pool, pool->elements[i].virt,
       pool->elements[i].phys);
 kfree(pool->elements);
 fail_free_lpfc_mbuf_pool:
 pci_pool_destroy(phba->lpfc_mbuf_pool);
 phba->lpfc_mbuf_pool = ((void*)0);
 fail_free_dma_buf_pool:
 pci_pool_destroy(phba->lpfc_scsi_dma_buf_pool);
 phba->lpfc_scsi_dma_buf_pool = ((void*)0);
 fail:
 return -ENOMEM;
}
