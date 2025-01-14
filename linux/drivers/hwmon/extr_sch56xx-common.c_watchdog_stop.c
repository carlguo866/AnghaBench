
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {int dummy; } ;
struct sch56xx_watchdog_data {int watchdog_output_enable; int io_lock; int addr; } ;


 int SCH56XX_REG_WDOG_OUTPUT_ENABLE ;
 int SCH56XX_WDOG_OUTPUT_ENABLE ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int sch56xx_write_virtual_reg (int ,int ,int) ;
 struct sch56xx_watchdog_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int watchdog_stop(struct watchdog_device *wddev)
{
 struct sch56xx_watchdog_data *data = watchdog_get_drvdata(wddev);
 int ret = 0;
 u8 val;

 val = data->watchdog_output_enable & ~SCH56XX_WDOG_OUTPUT_ENABLE;
 mutex_lock(data->io_lock);
 ret = sch56xx_write_virtual_reg(data->addr,
     SCH56XX_REG_WDOG_OUTPUT_ENABLE, val);
 mutex_unlock(data->io_lock);
 if (ret)
  return ret;

 data->watchdog_output_enable = val;
 return 0;
}
