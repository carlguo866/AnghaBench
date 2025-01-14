
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subch_data_s {int sd_rlock; int sd_subch; int sd_nasid; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SAL_IROUTER_INTR_RECV ;
 int ia64_sn_irtr_intr (int ,int ) ;
 int sn_sysctl_event ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t
scdrv_event_interrupt(int irq, void *subch_data)
{
 struct subch_data_s *sd = subch_data;
 unsigned long flags;
 int status;

 spin_lock_irqsave(&sd->sd_rlock, flags);
 status = ia64_sn_irtr_intr(sd->sd_nasid, sd->sd_subch);

 if ((status > 0) && (status & SAL_IROUTER_INTR_RECV)) {
  tasklet_schedule(&sn_sysctl_event);
 }
 spin_unlock_irqrestore(&sd->sd_rlock, flags);
 return IRQ_HANDLED;
}
