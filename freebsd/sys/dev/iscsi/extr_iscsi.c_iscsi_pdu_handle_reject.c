
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_bhs_reject {int bhsr_reason; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;


 int ISCSI_SESSION_WARN (struct iscsi_session*,char*,int ) ;
 struct iscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int icl_pdu_free (struct icl_pdu*) ;

__attribute__((used)) static void
iscsi_pdu_handle_reject(struct icl_pdu *response)
{
 struct iscsi_bhs_reject *bhsr;
 struct iscsi_session *is;

 is = PDU_SESSION(response);
 bhsr = (struct iscsi_bhs_reject *)response->ip_bhs;
 ISCSI_SESSION_WARN(is, "received Reject PDU, reason 0x%x; protocol error?",
     bhsr->bhsr_reason);

 icl_pdu_free(response);
}
