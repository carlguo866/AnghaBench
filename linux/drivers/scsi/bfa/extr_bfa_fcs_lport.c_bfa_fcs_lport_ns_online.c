
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_fcs_lport_ns_s {struct bfa_fcs_lport_s* port; } ;


 struct bfa_fcs_lport_ns_s* BFA_FCS_GET_NS_FROM_PORT (struct bfa_fcs_lport_s*) ;
 int NSSM_EVENT_PORT_ONLINE ;
 int bfa_sm_send_event (struct bfa_fcs_lport_ns_s*,int ) ;

void
bfa_fcs_lport_ns_online(struct bfa_fcs_lport_s *port)
{
 struct bfa_fcs_lport_ns_s *ns = BFA_FCS_GET_NS_FROM_PORT(port);

 ns->port = port;
 bfa_sm_send_event(ns, NSSM_EVENT_PORT_ONLINE);
}
