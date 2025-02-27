
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_queue {scalar_t__ q_mode; int EQ_no_entry; int last_cpu; } ;
struct lpfc_hba_eq_hdl {int idx; struct lpfc_hba* phba; } ;
struct TYPE_6__ {int sli_flag; } ;
struct TYPE_5__ {struct lpfc_eq_intr_info* eq_info; TYPE_1__* hba_eq_hdl; int hdwq; } ;
struct lpfc_hba {scalar_t__ link_state; int cfg_irq_chann; scalar_t__ intr_type; TYPE_3__ sli; scalar_t__ cfg_auto_imax; TYPE_2__ sli4_hba; int hbalock; } ;
struct lpfc_eq_intr_info {int icnt; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {struct lpfc_queue* eq; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KERN_WARNING ;
 int LOG_SLI ;
 scalar_t__ LPFC_EQD_ISR_TRIGGER ;
 scalar_t__ LPFC_LINK_DOWN ;
 scalar_t__ LPFC_MAX_AUTO_EQ_DELAY ;
 int LPFC_SLI_USE_EQDR ;
 scalar_t__ MSIX ;
 int lpfc_intr_state_check (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int lpfc_sli4_eq_flush (struct lpfc_hba*,struct lpfc_queue*) ;
 int lpfc_sli4_mod_hba_eq_delay (struct lpfc_hba*,struct lpfc_queue*,scalar_t__) ;
 int lpfc_sli4_process_eq (struct lpfc_hba*,struct lpfc_queue*) ;
 int raw_smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ this_cpu_inc_return (int ) ;
 scalar_t__ unlikely (int) ;

irqreturn_t
lpfc_sli4_hba_intr_handler(int irq, void *dev_id)
{
 struct lpfc_hba *phba;
 struct lpfc_hba_eq_hdl *hba_eq_hdl;
 struct lpfc_queue *fpeq;
 unsigned long iflag;
 int ecount = 0;
 int hba_eqidx;
 struct lpfc_eq_intr_info *eqi;
 uint32_t icnt;


 hba_eq_hdl = (struct lpfc_hba_eq_hdl *)dev_id;
 phba = hba_eq_hdl->phba;
 hba_eqidx = hba_eq_hdl->idx;

 if (unlikely(!phba))
  return IRQ_NONE;
 if (unlikely(!phba->sli4_hba.hdwq))
  return IRQ_NONE;


 fpeq = phba->sli4_hba.hba_eq_hdl[hba_eqidx].eq;
 if (unlikely(!fpeq))
  return IRQ_NONE;


 if (unlikely(lpfc_intr_state_check(phba))) {

  spin_lock_irqsave(&phba->hbalock, iflag);
  if (phba->link_state < LPFC_LINK_DOWN)

   lpfc_sli4_eq_flush(phba, fpeq);
  spin_unlock_irqrestore(&phba->hbalock, iflag);
  return IRQ_NONE;
 }

 eqi = phba->sli4_hba.eq_info;
 icnt = this_cpu_inc_return(eqi->icnt);
 fpeq->last_cpu = raw_smp_processor_id();

 if (icnt > LPFC_EQD_ISR_TRIGGER &&
     phba->cfg_irq_chann == 1 &&
     phba->cfg_auto_imax &&
     fpeq->q_mode != LPFC_MAX_AUTO_EQ_DELAY &&
     phba->sli.sli_flag & LPFC_SLI_USE_EQDR)
  lpfc_sli4_mod_hba_eq_delay(phba, fpeq, LPFC_MAX_AUTO_EQ_DELAY);


 ecount = lpfc_sli4_process_eq(phba, fpeq);

 if (unlikely(ecount == 0)) {
  fpeq->EQ_no_entry++;
  if (phba->intr_type == MSIX)

   lpfc_printf_log(phba, KERN_WARNING, LOG_SLI,
     "0358 MSI-X interrupt with no EQE\n");
  else

   return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
