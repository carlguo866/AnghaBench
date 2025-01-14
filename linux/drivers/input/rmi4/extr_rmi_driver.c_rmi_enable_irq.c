
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_driver_data {int enabled; int enabled_mutex; } ;
struct rmi_device_platform_data {int irq; } ;
struct rmi_device {int dev; TYPE_1__* xport; } ;
struct TYPE_2__ {int dev; } ;


 int IRQ_TYPE_EDGE_BOTH ;
 struct rmi_driver_data* dev_get_drvdata (int *) ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ device_may_wakeup (int ) ;
 int disable_irq_wake (int) ;
 int enable_irq (int) ;
 int irq_get_trigger_type (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rmi_device_platform_data* rmi_get_platform_data (struct rmi_device*) ;
 int rmi_process_interrupt_requests (struct rmi_device*) ;

void rmi_enable_irq(struct rmi_device *rmi_dev, bool clear_wake)
{
 struct rmi_device_platform_data *pdata = rmi_get_platform_data(rmi_dev);
 struct rmi_driver_data *data = dev_get_drvdata(&rmi_dev->dev);
 int irq = pdata->irq;
 int irq_flags;
 int retval;

 mutex_lock(&data->enabled_mutex);

 if (data->enabled)
  goto out;

 enable_irq(irq);
 data->enabled = 1;
 if (clear_wake && device_may_wakeup(rmi_dev->xport->dev)) {
  retval = disable_irq_wake(irq);
  if (retval)
   dev_warn(&rmi_dev->dev,
     "Failed to disable irq for wake: %d\n",
     retval);
 }





 irq_flags = irq_get_trigger_type(pdata->irq);
 if (irq_flags & IRQ_TYPE_EDGE_BOTH)
  rmi_process_interrupt_requests(rmi_dev);

out:
 mutex_unlock(&data->enabled_mutex);
}
