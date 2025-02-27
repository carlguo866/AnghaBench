
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {scalar_t__ cmd_rsp_code; int exp_code; int reason_code; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_4__ {int pwwn; } ;
struct bfa_fcs_lport_s {int fcs; TYPE_2__ port_cfg; } ;
struct bfa_fcs_lport_fdmi_s {TYPE_1__* ms; } ;
typedef int bfa_status_t ;
struct TYPE_3__ {struct bfa_fcs_lport_s* port; } ;


 scalar_t__ BFA_FCXP_RSP_PLD (struct bfa_fcxp_s*) ;
 int BFA_STATUS_OK ;
 scalar_t__ CT_RSP_ACCEPT ;
 int FDMISM_EVENT_RSP_ERROR ;
 int FDMISM_EVENT_RSP_OK ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_fdmi_s*,int ) ;
 int bfa_trc (int ,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_fdmi_rhba_response(void *fcsarg, struct bfa_fcxp_s *fcxp,
    void *cbarg, bfa_status_t req_status,
    u32 rsp_len, u32 resid_len,
    struct fchs_s *rsp_fchs)
{
 struct bfa_fcs_lport_fdmi_s *fdmi =
    (struct bfa_fcs_lport_fdmi_s *) cbarg;
 struct bfa_fcs_lport_s *port = fdmi->ms->port;
 struct ct_hdr_s *cthdr = ((void*)0);

 bfa_trc(port->fcs, port->port_cfg.pwwn);




 if (req_status != BFA_STATUS_OK) {
  bfa_trc(port->fcs, req_status);
  bfa_sm_send_event(fdmi, FDMISM_EVENT_RSP_ERROR);
  return;
 }

 cthdr = (struct ct_hdr_s *) BFA_FCXP_RSP_PLD(fcxp);
 cthdr->cmd_rsp_code = be16_to_cpu(cthdr->cmd_rsp_code);

 if (cthdr->cmd_rsp_code == CT_RSP_ACCEPT) {
  bfa_sm_send_event(fdmi, FDMISM_EVENT_RSP_OK);
  return;
 }

 bfa_trc(port->fcs, cthdr->reason_code);
 bfa_trc(port->fcs, cthdr->exp_code);
 bfa_sm_send_event(fdmi, FDMISM_EVENT_RSP_ERROR);
}
