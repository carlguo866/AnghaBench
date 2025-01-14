
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int * sli3_ring; } ;
struct lpfc_hba {int cfg_poll; TYPE_1__ sli; } ;


 int DISABLE_FCP_RING_INT ;
 int ENABLE_FCP_RING_POLLING ;
 int HA_R0RE_REQ ;
 size_t LPFC_FCP_RING ;
 int fcp_poll_timer ;
 struct lpfc_hba* from_timer (int ,struct timer_list*,int ) ;
 int lpfc_poll_rearm_timer (struct lpfc_hba*) ;
 int lpfc_sli_handle_fast_ring_event (struct lpfc_hba*,int *,int ) ;
 struct lpfc_hba* phba ;

void lpfc_poll_timeout(struct timer_list *t)
{
 struct lpfc_hba *phba = from_timer(phba, t, fcp_poll_timer);

 if (phba->cfg_poll & ENABLE_FCP_RING_POLLING) {
  lpfc_sli_handle_fast_ring_event(phba,
   &phba->sli.sli3_ring[LPFC_FCP_RING], HA_R0RE_REQ);

  if (phba->cfg_poll & DISABLE_FCP_RING_INT)
   lpfc_poll_rearm_timer(phba);
 }
}
