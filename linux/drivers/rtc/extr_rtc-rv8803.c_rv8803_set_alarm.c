
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int time64_t ;
struct rv8803_data {int ctrl; int client; TYPE_3__* rtc; int flags_lock; } ;
struct TYPE_9__ {int tm_sec; int tm_mday; int tm_hour; int tm_min; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_4__ time; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_7__ {scalar_t__ enabled; } ;
struct TYPE_6__ {scalar_t__ enabled; } ;
struct TYPE_8__ {TYPE_2__ aie_timer; TYPE_1__ uie_rtctimer; } ;


 int RV8803_ALARM_MIN ;
 int RV8803_CTRL ;
 int RV8803_CTRL_AIE ;
 int RV8803_CTRL_UIE ;
 int RV8803_FLAG ;
 int RV8803_FLAG_AF ;
 int bin2bcd (int ) ;
 struct rv8803_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtc_time64_to_tm (int ,TYPE_4__*) ;
 int rtc_tm_to_time64 (TYPE_4__*) ;
 int rv8803_read_regs (struct i2c_client*,int ,int,int*) ;
 int rv8803_write_reg (int ,int ,int) ;
 int rv8803_write_regs (int ,int ,int,int*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int rv8803_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct rv8803_data *rv8803 = dev_get_drvdata(dev);
 u8 alarmvals[3];
 u8 ctrl[2];
 int ret, err;


 if (alrm->time.tm_sec) {
  time64_t alarm_time = rtc_tm_to_time64(&alrm->time);

  alarm_time += 60 - alrm->time.tm_sec;
  rtc_time64_to_tm(alarm_time, &alrm->time);
 }

 mutex_lock(&rv8803->flags_lock);

 ret = rv8803_read_regs(client, RV8803_FLAG, 2, ctrl);
 if (ret) {
  mutex_unlock(&rv8803->flags_lock);
  return ret;
 }

 alarmvals[0] = bin2bcd(alrm->time.tm_min);
 alarmvals[1] = bin2bcd(alrm->time.tm_hour);
 alarmvals[2] = bin2bcd(alrm->time.tm_mday);

 if (rv8803->ctrl & (RV8803_CTRL_AIE | RV8803_CTRL_UIE)) {
  rv8803->ctrl &= ~(RV8803_CTRL_AIE | RV8803_CTRL_UIE);
  err = rv8803_write_reg(rv8803->client, RV8803_CTRL,
           rv8803->ctrl);
  if (err) {
   mutex_unlock(&rv8803->flags_lock);
   return err;
  }
 }

 ctrl[1] &= ~RV8803_FLAG_AF;
 err = rv8803_write_reg(rv8803->client, RV8803_FLAG, ctrl[1]);
 mutex_unlock(&rv8803->flags_lock);
 if (err)
  return err;

 err = rv8803_write_regs(rv8803->client, RV8803_ALARM_MIN, 3, alarmvals);
 if (err)
  return err;

 if (alrm->enabled) {
  if (rv8803->rtc->uie_rtctimer.enabled)
   rv8803->ctrl |= RV8803_CTRL_UIE;
  if (rv8803->rtc->aie_timer.enabled)
   rv8803->ctrl |= RV8803_CTRL_AIE;

  err = rv8803_write_reg(rv8803->client, RV8803_CTRL,
           rv8803->ctrl);
  if (err)
   return err;
 }

 return 0;
}
