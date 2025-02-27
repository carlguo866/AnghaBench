
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfa_fcs_lport_ns_s {TYPE_3__* port; int fcxp; int timer; int num_rsnn_nn_retries; } ;
typedef enum vport_ns_event { ____Placeholder_vport_ns_event } vport_ns_event ;
struct TYPE_5__ {int ns_retries; } ;
struct TYPE_4__ {int pwwn; } ;
struct TYPE_6__ {int fcs; TYPE_2__ stats; TYPE_1__ port_cfg; } ;


 int BFA_FCS_GET_HAL_FROM_PORT (TYPE_3__*) ;
 int BFA_FCS_MAX_NS_RETRIES ;
 int BFA_FCS_RETRY_TIMEOUT ;



 int bfa_fcs_lport_ns_send_rspn_id (struct bfa_fcs_lport_ns_s*,int *) ;
 int bfa_fcs_lport_ns_sm_offline ;
 int bfa_fcs_lport_ns_sm_rsnn_nn_retry ;
 int bfa_fcs_lport_ns_sm_sending_rspn_id ;
 int bfa_fcs_lport_ns_timeout ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_ns_sm_rsnn_nn(struct bfa_fcs_lport_ns_s *ns,
    enum vport_ns_event event)
{
 bfa_trc(ns->port->fcs, ns->port->port_cfg.pwwn);
 bfa_trc(ns->port->fcs, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(ns, bfa_fcs_lport_ns_sm_sending_rspn_id);
  ns->num_rsnn_nn_retries = 0;
  bfa_fcs_lport_ns_send_rspn_id(ns, ((void*)0));
  break;

 case 129:
  if (ns->num_rsnn_nn_retries < BFA_FCS_MAX_NS_RETRIES) {
   bfa_sm_set_state(ns, bfa_fcs_lport_ns_sm_rsnn_nn_retry);
   ns->port->stats.ns_retries++;
   ns->num_rsnn_nn_retries++;
   bfa_timer_start(BFA_FCS_GET_HAL_FROM_PORT(ns->port),
     &ns->timer, bfa_fcs_lport_ns_timeout,
     ns, BFA_FCS_RETRY_TIMEOUT);
  } else {
   bfa_sm_set_state(ns,
    bfa_fcs_lport_ns_sm_sending_rspn_id);
   bfa_fcs_lport_ns_send_rspn_id(ns, ((void*)0));
  }
  break;

 case 130:
  bfa_sm_set_state(ns, bfa_fcs_lport_ns_sm_offline);
  bfa_fcxp_discard(ns->fcxp);
  break;

 default:
  bfa_sm_fault(ns->port->fcs, event);
 }
}
