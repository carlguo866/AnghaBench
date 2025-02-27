
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_lport {TYPE_1__* host; } ;
struct fc_fcp_internal {int max_can_queue; scalar_t__ last_can_queue_ramp_down_time; scalar_t__ last_can_queue_ramp_up_time; } ;
struct TYPE_2__ {int can_queue; int host_lock; } ;


 scalar_t__ FC_CAN_QUEUE_PERIOD ;
 int KERN_ERR ;
 struct fc_fcp_internal* fc_get_scsi_internal (struct fc_lport*) ;
 scalar_t__ jiffies ;
 int shost_printk (int ,TYPE_1__*,char*,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static void fc_fcp_can_queue_ramp_up(struct fc_lport *lport)
{
 struct fc_fcp_internal *si = fc_get_scsi_internal(lport);
 unsigned long flags;
 int can_queue;

 spin_lock_irqsave(lport->host->host_lock, flags);

 if (si->last_can_queue_ramp_up_time &&
     (time_before(jiffies, si->last_can_queue_ramp_up_time +
    FC_CAN_QUEUE_PERIOD)))
  goto unlock;

 if (time_before(jiffies, si->last_can_queue_ramp_down_time +
   FC_CAN_QUEUE_PERIOD))
  goto unlock;

 si->last_can_queue_ramp_up_time = jiffies;

 can_queue = lport->host->can_queue << 1;
 if (can_queue >= si->max_can_queue) {
  can_queue = si->max_can_queue;
  si->last_can_queue_ramp_down_time = 0;
 }
 lport->host->can_queue = can_queue;
 shost_printk(KERN_ERR, lport->host, "libfc: increased "
       "can_queue to %d.\n", can_queue);

unlock:
 spin_unlock_irqrestore(lport->host->host_lock, flags);
}
