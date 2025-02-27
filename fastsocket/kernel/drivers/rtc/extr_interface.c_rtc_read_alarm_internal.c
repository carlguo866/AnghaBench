
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_wkalrm {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct rtc_device {int ops_lock; TYPE_1__ dev; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* read_alarm ) (int ,struct rtc_wkalrm*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int memset (struct rtc_wkalrm*,int ,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,struct rtc_wkalrm*) ;

__attribute__((used)) static int rtc_read_alarm_internal(struct rtc_device *rtc, struct rtc_wkalrm *alarm)
{
 int err;

 err = mutex_lock_interruptible(&rtc->ops_lock);
 if (err)
  return err;

 if (rtc->ops == ((void*)0))
  err = -ENODEV;
 else if (!rtc->ops->read_alarm)
  err = -EINVAL;
 else {
  memset(alarm, 0, sizeof(struct rtc_wkalrm));
  err = rtc->ops->read_alarm(rtc->dev.parent, alarm);
 }

 mutex_unlock(&rtc->ops_lock);
 return err;
}
