
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ioa_cfg {scalar_t__ sdt_state; int dump_timeout; } ;
struct ipr_cmnd {int job_step; struct ipr_ioa_cfg* ioa_cfg; } ;


 scalar_t__ ABORT_DUMP ;
 scalar_t__ GET_DUMP ;
 int IPR_RC_JOB_CONTINUE ;
 scalar_t__ READ_DUMP ;
 scalar_t__ WAIT_FOR_DUMP ;
 int ipr_reset_alert ;

__attribute__((used)) static int ipr_reset_wait_for_dump(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

 if (ioa_cfg->sdt_state == GET_DUMP)
  ioa_cfg->sdt_state = WAIT_FOR_DUMP;
 else if (ioa_cfg->sdt_state == READ_DUMP)
  ioa_cfg->sdt_state = ABORT_DUMP;

 ioa_cfg->dump_timeout = 1;
 ipr_cmd->job_step = ipr_reset_alert;

 return IPR_RC_JOB_CONTINUE;
}
