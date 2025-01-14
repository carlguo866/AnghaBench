
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int state; TYPE_2__* device; } ;
struct request {int dummy; } ;
struct Scsi_Host {int eh_deadline; TYPE_1__* hostt; scalar_t__ last_reset; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_4__ {struct Scsi_Host* host; } ;
struct TYPE_3__ {int (* eh_timed_out ) (struct scsi_cmnd*) ;} ;


 int BLK_EH_DONE ;
 int BLK_EH_RESET_TIMER ;
 int DID_TIME_OUT ;
 int SCMD_STATE_COMPLETE ;
 scalar_t__ SUCCESS ;
 int TIMEOUT_ERROR ;
 struct scsi_cmnd* blk_mq_rq_to_pdu (struct request*) ;
 scalar_t__ jiffies ;
 scalar_t__ scsi_abort_command (struct scsi_cmnd*) ;
 int scsi_eh_scmd_add (struct scsi_cmnd*) ;
 int scsi_log_completion (struct scsi_cmnd*,int ) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int trace_scsi_dispatch_cmd_timeout (struct scsi_cmnd*) ;

enum blk_eh_timer_return scsi_times_out(struct request *req)
{
 struct scsi_cmnd *scmd = blk_mq_rq_to_pdu(req);
 enum blk_eh_timer_return rtn = BLK_EH_DONE;
 struct Scsi_Host *host = scmd->device->host;

 trace_scsi_dispatch_cmd_timeout(scmd);
 scsi_log_completion(scmd, TIMEOUT_ERROR);

 if (host->eh_deadline != -1 && !host->last_reset)
  host->last_reset = jiffies;

 if (host->hostt->eh_timed_out)
  rtn = host->hostt->eh_timed_out(scmd);

 if (rtn == BLK_EH_DONE) {
  if (test_and_set_bit(SCMD_STATE_COMPLETE, &scmd->state))
   return BLK_EH_RESET_TIMER;
  if (scsi_abort_command(scmd) != SUCCESS) {
   set_host_byte(scmd, DID_TIME_OUT);
   scsi_eh_scmd_add(scmd);
  }
 }

 return rtn;
}
