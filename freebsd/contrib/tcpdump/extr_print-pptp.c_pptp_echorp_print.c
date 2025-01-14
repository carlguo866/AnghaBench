
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pptp_msg_echorp {int reserved1; int err_code; int result_code; int id; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (int ) ;
 int PPTP_CTRL_MSG_TYPE_ECHORP ;
 int pptp_err_code_print (int *,int *) ;
 int pptp_id_print (int *,int *) ;
 int pptp_result_code_print (int *,int *,int ) ;
 int tstr ;

__attribute__((used)) static void
pptp_echorp_print(netdissect_options *ndo,
                  const u_char *dat)
{
 const struct pptp_msg_echorp *ptr = (const struct pptp_msg_echorp *)dat;

 ND_TCHECK(ptr->id);
 pptp_id_print(ndo, &ptr->id);
 ND_TCHECK(ptr->result_code);
 pptp_result_code_print(ndo, &ptr->result_code, PPTP_CTRL_MSG_TYPE_ECHORP);
 ND_TCHECK(ptr->err_code);
 pptp_err_code_print(ndo, &ptr->err_code);
 ND_TCHECK(ptr->reserved1);

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
