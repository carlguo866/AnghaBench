
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int expires; unsigned long data; } ;
struct TYPE_2__ {struct timer_list timer; } ;
struct i2c_pnx_algo_data {TYPE_1__ mif; } ;
struct i2c_adapter {int dev; struct i2c_pnx_algo_data* algo_data; } ;


 int HZ ;
 int I2C_PNX_TIMEOUT ;
 int add_timer (struct timer_list*) ;
 int del_timer_sync (struct timer_list*) ;
 int dev_dbg (int *,char*,int,int) ;
 int jiffies ;

__attribute__((used)) static inline void i2c_pnx_arm_timer(struct i2c_adapter *adap)
{
 struct i2c_pnx_algo_data *data = adap->algo_data;
 struct timer_list *timer = &data->mif.timer;
 int expires = I2C_PNX_TIMEOUT / (1000 / HZ);

 if (expires <= 1)
  expires = 2;

 del_timer_sync(timer);

 dev_dbg(&adap->dev, "Timer armed at %lu plus %u jiffies.\n",
  jiffies, expires);

 timer->expires = jiffies + expires;
 timer->data = (unsigned long)adap;

 add_timer(timer);
}
