
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sli4_wcqe_xri_aborted {int dummy; } ;
struct lpfc_wcqe_release {int dummy; } ;
struct lpfc_wcqe_complete {int dummy; } ;
struct lpfc_queue {int CQ_xri_aborted; int CQ_release_wqe; int CQ_wq; } ;
struct lpfc_hba {void* last_completion_time; } ;
struct lpfc_cqe {int dummy; } ;





 int KERN_ERR ;
 int LOG_SLI ;
 int bf_get (int ,struct lpfc_wcqe_release*) ;
 void* jiffies ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_sli4_fp_handle_fcp_wcqe (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_wcqe_complete*) ;
 int lpfc_sli4_fp_handle_rel_wcqe (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_wcqe_release*) ;
 int lpfc_sli4_sp_handle_abort_xri_wcqe (struct lpfc_hba*,struct lpfc_queue*,struct sli4_wcqe_xri_aborted*) ;
 int lpfc_sli_pcimem_bcopy (struct lpfc_cqe*,struct lpfc_wcqe_release*,int) ;
 int lpfc_wcqe_c_code ;

__attribute__((used)) static int
lpfc_sli4_fp_handle_wcqe(struct lpfc_hba *phba, struct lpfc_queue *cq,
    struct lpfc_cqe *cqe)
{
 struct lpfc_wcqe_release wcqe;
 bool workposted = 0;


 lpfc_sli_pcimem_bcopy(cqe, &wcqe, sizeof(struct lpfc_cqe));


 switch (bf_get(lpfc_wcqe_c_code, &wcqe)) {
 case 130:
  cq->CQ_wq++;

  phba->last_completion_time = jiffies;
  lpfc_sli4_fp_handle_fcp_wcqe(phba, cq,
    (struct lpfc_wcqe_complete *)&wcqe);
  break;
 case 129:
  cq->CQ_release_wqe++;

  lpfc_sli4_fp_handle_rel_wcqe(phba, cq,
    (struct lpfc_wcqe_release *)&wcqe);
  break;
 case 128:
  cq->CQ_xri_aborted++;

  phba->last_completion_time = jiffies;
  workposted = lpfc_sli4_sp_handle_abort_xri_wcqe(phba, cq,
    (struct sli4_wcqe_xri_aborted *)&wcqe);
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "0144 Not a valid WCQE code: x%x\n",
    bf_get(lpfc_wcqe_c_code, &wcqe));
  break;
 }
 return workposted;
}
