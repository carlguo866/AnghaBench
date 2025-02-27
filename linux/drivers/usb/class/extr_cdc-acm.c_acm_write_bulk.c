
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; scalar_t__ actual_length; scalar_t__ transfer_buffer_length; struct acm_wb* context; } ;
struct acm_wb {struct acm* instance; } ;
struct acm {int work; int flags; int write_lock; TYPE_1__* data; } ;
struct TYPE_2__ {int dev; } ;


 int EVENT_TTY_WAKEUP ;
 int acm_write_done (struct acm*,struct acm_wb*) ;
 int dev_vdbg (int *,char*,scalar_t__,scalar_t__,int) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void acm_write_bulk(struct urb *urb)
{
 struct acm_wb *wb = urb->context;
 struct acm *acm = wb->instance;
 unsigned long flags;
 int status = urb->status;

 if (status || (urb->actual_length != urb->transfer_buffer_length))
  dev_vdbg(&acm->data->dev, "wrote len %d/%d, status %d\n",
   urb->actual_length,
   urb->transfer_buffer_length,
   status);

 spin_lock_irqsave(&acm->write_lock, flags);
 acm_write_done(acm, wb);
 spin_unlock_irqrestore(&acm->write_lock, flags);
 set_bit(EVENT_TTY_WAKEUP, &acm->flags);
 schedule_work(&acm->work);
}
