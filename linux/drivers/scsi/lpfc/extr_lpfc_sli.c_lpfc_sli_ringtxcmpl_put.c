
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_sli_ring {scalar_t__ ringno; int txcmplq_cnt; int txcmplq; int ring_lock; } ;
struct TYPE_3__ {scalar_t__ ulpCommand; } ;
struct lpfc_iocbq {TYPE_2__* vport; TYPE_1__ iocb; int iocb_flag; int list; } ;
struct lpfc_hba {scalar_t__ sli_rev; int fc_ratov; int hbalock; } ;
struct TYPE_4__ {int load_flag; int els_tmofunc; } ;


 int BUG_ON (int) ;
 scalar_t__ CMD_ABORT_XRI_CN ;
 scalar_t__ CMD_CLOSE_XRI_CN ;
 int FC_UNLOADING ;
 scalar_t__ LPFC_ELS_RING ;
 int LPFC_IO_ON_TXCMPLQ ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
lpfc_sli_ringtxcmpl_put(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
   struct lpfc_iocbq *piocb)
{
 if (phba->sli_rev == LPFC_SLI_REV4)
  lockdep_assert_held(&pring->ring_lock);
 else
  lockdep_assert_held(&phba->hbalock);

 BUG_ON(!piocb);

 list_add_tail(&piocb->list, &pring->txcmplq);
 piocb->iocb_flag |= LPFC_IO_ON_TXCMPLQ;
 pring->txcmplq_cnt++;

 if ((unlikely(pring->ringno == LPFC_ELS_RING)) &&
    (piocb->iocb.ulpCommand != CMD_ABORT_XRI_CN) &&
    (piocb->iocb.ulpCommand != CMD_CLOSE_XRI_CN)) {
  BUG_ON(!piocb->vport);
  if (!(piocb->vport->load_flag & FC_UNLOADING))
   mod_timer(&piocb->vport->els_tmofunc,
      jiffies +
      msecs_to_jiffies(1000 * (phba->fc_ratov << 1)));
 }

 return 0;
}
