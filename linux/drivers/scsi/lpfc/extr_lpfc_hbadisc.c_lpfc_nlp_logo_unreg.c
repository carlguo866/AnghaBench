
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lpfc_vport {int phba; } ;
struct lpfc_nodelist {int nlp_flag; scalar_t__ nlp_defer_did; int nlp_rpi; int nlp_DID; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct TYPE_4__ {scalar_t__ ctx_ndlp; struct lpfc_vport* vport; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int KERN_INFO ;
 int LOG_DISCOVERY ;
 scalar_t__ NLP_EVT_NOTHING_PENDING ;
 int NLP_RELEASE_RPI ;
 int NLP_UNREG_INP ;
 int lpfc_issue_els_logo (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_issue_els_plogi (struct lpfc_vport*,int ,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,scalar_t__,struct lpfc_nodelist*) ;
 int lpfc_sli4_free_rpi (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;

__attribute__((used)) static void
lpfc_nlp_logo_unreg(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 struct lpfc_vport *vport = pmb->vport;
 struct lpfc_nodelist *ndlp;

 ndlp = (struct lpfc_nodelist *)(pmb->ctx_ndlp);
 if (!ndlp)
  return;
 lpfc_issue_els_logo(vport, ndlp, 0);
 mempool_free(pmb, phba->mbox_mem_pool);


 if ((ndlp->nlp_flag & NLP_UNREG_INP) &&
     (ndlp->nlp_defer_did != NLP_EVT_NOTHING_PENDING)) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "1434 UNREG cmpl deferred logo x%x "
     "on NPort x%x Data: x%x x%px\n",
     ndlp->nlp_rpi, ndlp->nlp_DID,
     ndlp->nlp_defer_did, ndlp);

  ndlp->nlp_flag &= ~NLP_UNREG_INP;
  ndlp->nlp_defer_did = NLP_EVT_NOTHING_PENDING;
  lpfc_issue_els_plogi(vport, ndlp->nlp_DID, 0);
 } else {
  if (ndlp->nlp_flag & NLP_RELEASE_RPI) {
   lpfc_sli4_free_rpi(vport->phba, ndlp->nlp_rpi);
   ndlp->nlp_flag &= ~NLP_RELEASE_RPI;
  }
  ndlp->nlp_flag &= ~NLP_UNREG_INP;
 }
}
