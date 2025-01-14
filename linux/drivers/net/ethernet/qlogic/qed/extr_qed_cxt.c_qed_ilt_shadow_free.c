
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct qed_ilt_client_cfg {int dummy; } ;
struct qed_hwfn {TYPE_2__* cdev; struct qed_cxt_mngr* p_cxt_mngr; } ;
struct qed_dma_mem {int * p_virt; int p_phys; int size; } ;
struct qed_cxt_mngr {struct qed_dma_mem* ilt_shadow; struct qed_ilt_client_cfg* clients; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (struct qed_dma_mem*) ;
 size_t qed_cxt_ilt_shadow_size (struct qed_ilt_client_cfg*) ;

__attribute__((used)) static void qed_ilt_shadow_free(struct qed_hwfn *p_hwfn)
{
 struct qed_ilt_client_cfg *p_cli = p_hwfn->p_cxt_mngr->clients;
 struct qed_cxt_mngr *p_mngr = p_hwfn->p_cxt_mngr;
 u32 ilt_size, i;

 ilt_size = qed_cxt_ilt_shadow_size(p_cli);

 for (i = 0; p_mngr->ilt_shadow && i < ilt_size; i++) {
  struct qed_dma_mem *p_dma = &p_mngr->ilt_shadow[i];

  if (p_dma->p_virt)
   dma_free_coherent(&p_hwfn->cdev->pdev->dev,
       p_dma->size, p_dma->p_virt,
       p_dma->p_phys);
  p_dma->p_virt = ((void*)0);
 }
 kfree(p_mngr->ilt_shadow);
}
