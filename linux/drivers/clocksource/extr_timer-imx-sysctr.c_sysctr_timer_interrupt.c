
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int stub1 (struct clock_event_device*) ;
 int sysctr_irq_acknowledge () ;

__attribute__((used)) static irqreturn_t sysctr_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = dev_id;

 sysctr_irq_acknowledge();

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
