
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_wcqe_release {int dummy; } ;
struct TYPE_3__ {TYPE_2__* els_wq; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
struct TYPE_4__ {scalar_t__ queue_id; } ;


 int KERN_WARNING ;
 int LOG_SLI ;
 scalar_t__ bf_get (int ,struct lpfc_wcqe_release*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,scalar_t__,scalar_t__) ;
 int lpfc_sli4_wq_release (TYPE_2__*,scalar_t__) ;
 int lpfc_wcqe_r_wq_id ;
 int lpfc_wcqe_r_wqe_index ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
lpfc_sli4_sp_handle_rel_wcqe(struct lpfc_hba *phba,
        struct lpfc_wcqe_release *wcqe)
{

 if (unlikely(!phba->sli4_hba.els_wq))
  return;

 if (bf_get(lpfc_wcqe_r_wq_id, wcqe) == phba->sli4_hba.els_wq->queue_id)
  lpfc_sli4_wq_release(phba->sli4_hba.els_wq,
         bf_get(lpfc_wcqe_r_wqe_index, wcqe));
 else
  lpfc_printf_log(phba, KERN_WARNING, LOG_SLI,
    "2579 Slow-path wqe consume event carries "
    "miss-matched qid: wcqe-qid=x%x, sp-qid=x%x\n",
    bf_get(lpfc_wcqe_r_wqe_index, wcqe),
    phba->sli4_hba.els_wq->queue_id);
}
