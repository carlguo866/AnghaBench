
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct lpfc_vport {int fc_flag; int port_state; } ;
struct lpfc_mbx_read_top {scalar_t__ eventTag; } ;
struct TYPE_16__ {int sli_flag; TYPE_1__* ring; } ;
struct TYPE_14__ {int LinkDown; int LinkUp; int LinkMultiEvent; } ;
struct lpfc_hba {scalar_t__ link_state; scalar_t__ fc_eventTag; scalar_t__ sli_rev; int link_flag; int mbox_mem_pool; TYPE_6__ sli; int wait_4_mlo_m_q; int wait_4_mlo_maint_flg; TYPE_5__* pport; TYPE_4__ fc_stat; int * alpa_map; int link_events; int hbalock; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct Scsi_Host {int * host_lock; } ;
struct TYPE_12__ {int varReadTop; } ;
struct TYPE_17__ {TYPE_2__ un; scalar_t__ mbxStatus; } ;
struct TYPE_13__ {TYPE_7__ mb; } ;
struct TYPE_18__ {TYPE_3__ u; scalar_t__ context1; struct lpfc_vport* vport; } ;
struct TYPE_15__ {int port_state; } ;
struct TYPE_11__ {int flag; } ;
typedef TYPE_7__ MAILBOX_t ;
typedef TYPE_8__ LPFC_MBOXQ_t ;


 int FC_BYPASSED_MODE ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_LINK_EVENT ;
 scalar_t__ LPFC_ATT_LINK_DOWN ;
 scalar_t__ LPFC_ATT_LINK_UP ;
 size_t LPFC_ELS_RING ;
 scalar_t__ LPFC_HBA_ERROR ;
 scalar_t__ LPFC_LINK_DOWN ;
 int LPFC_MENLO_MAINT ;
 scalar_t__ LPFC_SLI_REV4 ;
 int LPFC_STOP_IOCB_EVENT ;
 int LS_LOOPBACK_MODE ;
 scalar_t__ bf_get (int ,struct lpfc_mbx_read_top*) ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_enable_la (struct lpfc_hba*) ;
 int lpfc_issue_clear_la (struct lpfc_hba*,struct lpfc_vport*) ;
 int lpfc_linkdown (struct lpfc_hba*) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_mbx_issue_link_down (struct lpfc_hba*) ;
 int lpfc_mbx_process_link_up (struct lpfc_hba*,struct lpfc_mbx_read_top*) ;
 int lpfc_mbx_read_top_alpa_granted ;
 int lpfc_mbx_read_top_att_type ;
 int lpfc_mbx_read_top_fa ;
 int lpfc_mbx_read_top_link_spd ;
 int lpfc_mbx_read_top_mm ;
 int lpfc_mbx_read_top_pb ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,scalar_t__,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int memcpy (int *,int ,int) ;
 int mempool_free (TYPE_8__*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up_interruptible (int *) ;

void
lpfc_mbx_cmpl_read_topology(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 struct lpfc_vport *vport = pmb->vport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_mbx_read_top *la;
 MAILBOX_t *mb = &pmb->u.mb;
 struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *) (pmb->context1);


 phba->sli.ring[LPFC_ELS_RING].flag &= ~LPFC_STOP_IOCB_EVENT;

 if (mb->mbxStatus) {
  lpfc_printf_log(phba, KERN_INFO, LOG_LINK_EVENT,
    "1307 READ_LA mbox error x%x state x%x\n",
    mb->mbxStatus, vport->port_state);
  lpfc_mbx_issue_link_down(phba);
  phba->link_state = LPFC_HBA_ERROR;
  goto lpfc_mbx_cmpl_read_topology_free_mbuf;
 }

 la = (struct lpfc_mbx_read_top *) &pmb->u.mb.un.varReadTop;

 memcpy(&phba->alpa_map[0], mp->virt, 128);

 spin_lock_irq(shost->host_lock);
 if (bf_get(lpfc_mbx_read_top_pb, la))
  vport->fc_flag |= FC_BYPASSED_MODE;
 else
  vport->fc_flag &= ~FC_BYPASSED_MODE;
 spin_unlock_irq(shost->host_lock);

 if (phba->fc_eventTag <= la->eventTag) {
  phba->fc_stat.LinkMultiEvent++;
  if (bf_get(lpfc_mbx_read_top_att_type, la) == LPFC_ATT_LINK_UP)
   if (phba->fc_eventTag != 0)
    lpfc_linkdown(phba);
 }

 phba->fc_eventTag = la->eventTag;
 if (phba->sli_rev < LPFC_SLI_REV4) {
  spin_lock_irq(&phba->hbalock);
  if (bf_get(lpfc_mbx_read_top_mm, la))
   phba->sli.sli_flag |= LPFC_MENLO_MAINT;
  else
   phba->sli.sli_flag &= ~LPFC_MENLO_MAINT;
  spin_unlock_irq(&phba->hbalock);
 }

 phba->link_events++;
 if ((bf_get(lpfc_mbx_read_top_att_type, la) == LPFC_ATT_LINK_UP) &&
     !(phba->sli.sli_flag & LPFC_MENLO_MAINT)) {
  phba->fc_stat.LinkUp++;
  if (phba->link_flag & LS_LOOPBACK_MODE) {
   lpfc_printf_log(phba, KERN_ERR, LOG_LINK_EVENT,
     "1306 Link Up Event in loop back mode "
     "x%x received Data: x%x x%x x%x x%x\n",
     la->eventTag, phba->fc_eventTag,
     bf_get(lpfc_mbx_read_top_alpa_granted,
            la),
     bf_get(lpfc_mbx_read_top_link_spd, la),
     phba->alpa_map[0]);
  } else {
   lpfc_printf_log(phba, KERN_ERR, LOG_LINK_EVENT,
     "1303 Link Up Event x%x received "
     "Data: x%x x%x x%x x%x x%x x%x %d\n",
     la->eventTag, phba->fc_eventTag,
     bf_get(lpfc_mbx_read_top_alpa_granted,
            la),
     bf_get(lpfc_mbx_read_top_link_spd, la),
     phba->alpa_map[0],
     bf_get(lpfc_mbx_read_top_mm, la),
     bf_get(lpfc_mbx_read_top_fa, la),
     phba->wait_4_mlo_maint_flg);
  }
  lpfc_mbx_process_link_up(phba, la);
 } else if (bf_get(lpfc_mbx_read_top_att_type, la) ==
     LPFC_ATT_LINK_DOWN) {
  phba->fc_stat.LinkDown++;
  if (phba->link_flag & LS_LOOPBACK_MODE)
   lpfc_printf_log(phba, KERN_ERR, LOG_LINK_EVENT,
    "1308 Link Down Event in loop back mode "
    "x%x received "
    "Data: x%x x%x x%x\n",
    la->eventTag, phba->fc_eventTag,
    phba->pport->port_state, vport->fc_flag);
  else
   lpfc_printf_log(phba, KERN_ERR, LOG_LINK_EVENT,
    "1305 Link Down Event x%x received "
    "Data: x%x x%x x%x x%x x%x\n",
    la->eventTag, phba->fc_eventTag,
    phba->pport->port_state, vport->fc_flag,
    bf_get(lpfc_mbx_read_top_mm, la),
    bf_get(lpfc_mbx_read_top_fa, la));
  lpfc_mbx_issue_link_down(phba);
 }
 if ((phba->sli.sli_flag & LPFC_MENLO_MAINT) &&
     ((bf_get(lpfc_mbx_read_top_att_type, la) == LPFC_ATT_LINK_UP))) {
  if (phba->link_state != LPFC_LINK_DOWN) {
   phba->fc_stat.LinkDown++;
   lpfc_printf_log(phba, KERN_ERR, LOG_LINK_EVENT,
    "1312 Link Down Event x%x received "
    "Data: x%x x%x x%x\n",
    la->eventTag, phba->fc_eventTag,
    phba->pport->port_state, vport->fc_flag);
   lpfc_mbx_issue_link_down(phba);
  } else
   lpfc_enable_la(phba);

  lpfc_printf_log(phba, KERN_ERR, LOG_LINK_EVENT,
    "1310 Menlo Maint Mode Link up Event x%x rcvd "
    "Data: x%x x%x x%x\n",
    la->eventTag, phba->fc_eventTag,
    phba->pport->port_state, vport->fc_flag);





  if (phba->wait_4_mlo_maint_flg) {
   phba->wait_4_mlo_maint_flg = 0;
   wake_up_interruptible(&phba->wait_4_mlo_m_q);
  }
 }

 if ((phba->sli_rev < LPFC_SLI_REV4) &&
     bf_get(lpfc_mbx_read_top_fa, la)) {
  if (phba->sli.sli_flag & LPFC_MENLO_MAINT)
   lpfc_issue_clear_la(phba, vport);
  lpfc_printf_log(phba, KERN_INFO, LOG_LINK_EVENT,
    "1311 fa %d\n",
    bf_get(lpfc_mbx_read_top_fa, la));
 }

lpfc_mbx_cmpl_read_topology_free_mbuf:
 lpfc_mbuf_free(phba, mp->virt, mp->phys);
 kfree(mp);
 mempool_free(pmb, phba->mbox_mem_pool);
 return;
}
