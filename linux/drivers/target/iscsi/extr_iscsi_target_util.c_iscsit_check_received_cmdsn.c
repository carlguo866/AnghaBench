
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iscsi_session {scalar_t__ exp_cmd_sn; int max_cmd_sn; } ;


 int CMDSN_HIGHER_THAN_EXP ;
 int CMDSN_LOWER_THAN_EXP ;
 int CMDSN_MAXCMDSN_OVERRUN ;
 int CMDSN_NORMAL_OPERATION ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ iscsi_sna_gt (scalar_t__,scalar_t__) ;
 int pr_debug (char*,scalar_t__,...) ;
 int pr_err (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int iscsit_check_received_cmdsn(struct iscsi_session *sess, u32 cmdsn)
{
 u32 max_cmdsn;
 int ret;







 max_cmdsn = atomic_read(&sess->max_cmd_sn);
 if (iscsi_sna_gt(cmdsn, max_cmdsn)) {
  pr_err("Received CmdSN: 0x%08x is greater than"
         " MaxCmdSN: 0x%08x, ignoring.\n", cmdsn, max_cmdsn);
  ret = CMDSN_MAXCMDSN_OVERRUN;

 } else if (cmdsn == sess->exp_cmd_sn) {
  sess->exp_cmd_sn++;
  pr_debug("Received CmdSN matches ExpCmdSN,"
        " incremented ExpCmdSN to: 0x%08x\n",
        sess->exp_cmd_sn);
  ret = CMDSN_NORMAL_OPERATION;

 } else if (iscsi_sna_gt(cmdsn, sess->exp_cmd_sn)) {
  pr_debug("Received CmdSN: 0x%08x is greater"
        " than ExpCmdSN: 0x%08x, not acknowledging.\n",
        cmdsn, sess->exp_cmd_sn);
  ret = CMDSN_HIGHER_THAN_EXP;

 } else {
  pr_err("Received CmdSN: 0x%08x is less than"
         " ExpCmdSN: 0x%08x, ignoring.\n", cmdsn,
         sess->exp_cmd_sn);
  ret = CMDSN_LOWER_THAN_EXP;
 }

 return ret;
}
