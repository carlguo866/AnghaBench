
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pptp_msg_icrp {int reserved1; int pkt_proc_delay; int recv_winsiz; int err_code; int result_code; int peer_call_id; int call_id; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (int ) ;
 int PPTP_CTRL_MSG_TYPE_ICRP ;
 int pptp_call_id_print (int *,int *) ;
 int pptp_err_code_print (int *,int *) ;
 int pptp_peer_call_id_print (int *,int *) ;
 int pptp_pkt_proc_delay_print (int *,int *) ;
 int pptp_recv_winsiz_print (int *,int *) ;
 int pptp_result_code_print (int *,int *,int ) ;
 int tstr ;

__attribute__((used)) static void
pptp_icrp_print(netdissect_options *ndo,
                const u_char *dat)
{
 const struct pptp_msg_icrp *ptr = (const struct pptp_msg_icrp *)dat;

 ND_TCHECK(ptr->call_id);
 pptp_call_id_print(ndo, &ptr->call_id);
 ND_TCHECK(ptr->peer_call_id);
 pptp_peer_call_id_print(ndo, &ptr->peer_call_id);
 ND_TCHECK(ptr->result_code);
 pptp_result_code_print(ndo, &ptr->result_code, PPTP_CTRL_MSG_TYPE_ICRP);
 ND_TCHECK(ptr->err_code);
 pptp_err_code_print(ndo, &ptr->err_code);
 ND_TCHECK(ptr->recv_winsiz);
 pptp_recv_winsiz_print(ndo, &ptr->recv_winsiz);
 ND_TCHECK(ptr->pkt_proc_delay);
 pptp_pkt_proc_delay_print(ndo, &ptr->pkt_proc_delay);
 ND_TCHECK(ptr->reserved1);

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
