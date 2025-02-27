
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_fc4_type; int nlp_state; int nlp_prev_state; } ;
struct Scsi_Host {int host_lock; } ;


 int NLP_FC4_FCP ;
 int NLP_FC4_NVME ;
 int NLP_NODEV_REMOVE ;
 int NLP_NPR_2B_DISC ;
 int NLP_STE_MAPPED_NODE ;
 int NLP_STE_NPR_NODE ;
 int lpfc_disc_set_adisc (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_device_recov_mapped_node(struct lpfc_vport *vport,
         struct lpfc_nodelist *ndlp,
         void *arg,
         uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 ndlp->nlp_prev_state = NLP_STE_MAPPED_NODE;
 lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag &= ~(NLP_NODEV_REMOVE | NLP_NPR_2B_DISC);
 ndlp->nlp_fc4_type &= ~(NLP_FC4_FCP | NLP_FC4_NVME);
 spin_unlock_irq(shost->host_lock);
 lpfc_disc_set_adisc(vport, ndlp);
 return ndlp->nlp_state;
}
