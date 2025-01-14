
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rv3029_data {TYPE_1__* rtc; } ;
struct mutex {int dummy; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct mutex ops_lock; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long RTC_AF ;
 int RV3029_IRQ_CTRL ;
 int RV3029_IRQ_CTRL_AIE ;
 int RV3029_IRQ_FLAGS ;
 int RV3029_IRQ_FLAGS_AF ;
 struct rv3029_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*,int) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int rtc_update_irq (TYPE_1__*,int,unsigned long) ;
 int rv3029_read_regs (struct device*,int ,int*,int) ;
 int rv3029_write_regs (struct device*,int ,int*,int) ;

__attribute__((used)) static irqreturn_t rv3029_handle_irq(int irq, void *dev_id)
{
 struct device *dev = dev_id;
 struct rv3029_data *rv3029 = dev_get_drvdata(dev);
 struct mutex *lock = &rv3029->rtc->ops_lock;
 unsigned long events = 0;
 u8 flags, controls;
 int ret;

 mutex_lock(lock);

 ret = rv3029_read_regs(dev, RV3029_IRQ_CTRL, &controls, 1);
 if (ret) {
  dev_warn(dev, "Read IRQ Control Register error %d\n", ret);
  mutex_unlock(lock);
  return IRQ_NONE;
 }

 ret = rv3029_read_regs(dev, RV3029_IRQ_FLAGS, &flags, 1);
 if (ret) {
  dev_warn(dev, "Read IRQ Flags Register error %d\n", ret);
  mutex_unlock(lock);
  return IRQ_NONE;
 }

 if (flags & RV3029_IRQ_FLAGS_AF) {
  flags &= ~RV3029_IRQ_FLAGS_AF;
  controls &= ~RV3029_IRQ_CTRL_AIE;
  events |= RTC_AF;
 }

 if (events) {
  rtc_update_irq(rv3029->rtc, 1, events);
  rv3029_write_regs(dev, RV3029_IRQ_FLAGS, &flags, 1);
  rv3029_write_regs(dev, RV3029_IRQ_CTRL, &controls, 1);
 }
 mutex_unlock(lock);

 return IRQ_HANDLED;
}
