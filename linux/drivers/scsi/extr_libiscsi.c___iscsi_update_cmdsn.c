
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct iscsi_session {scalar_t__ exp_cmdsn; scalar_t__ max_cmdsn; } ;


 scalar_t__ iscsi_sna_lt (scalar_t__,scalar_t__) ;

__attribute__((used)) static void __iscsi_update_cmdsn(struct iscsi_session *session,
     uint32_t exp_cmdsn, uint32_t max_cmdsn)
{




 if (iscsi_sna_lt(max_cmdsn, exp_cmdsn - 1))
  return;

 if (exp_cmdsn != session->exp_cmdsn &&
     !iscsi_sna_lt(exp_cmdsn, session->exp_cmdsn))
  session->exp_cmdsn = exp_cmdsn;

 if (max_cmdsn != session->max_cmdsn &&
     !iscsi_sna_lt(max_cmdsn, session->max_cmdsn))
  session->max_cmdsn = max_cmdsn;
}
