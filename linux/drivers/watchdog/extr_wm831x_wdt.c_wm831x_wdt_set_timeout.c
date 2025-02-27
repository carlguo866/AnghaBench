
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wm831x_wdt_drvdata {struct wm831x* wm831x; } ;
struct wm831x {int dev; } ;
struct watchdog_device {unsigned int timeout; } ;
struct TYPE_3__ {unsigned int time; int val; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int WM831X_WATCHDOG ;
 int WM831X_WDOG_TO_MASK ;
 int dev_err (int ,char*,int) ;
 struct wm831x_wdt_drvdata* watchdog_get_drvdata (struct watchdog_device*) ;
 int wm831x_reg_lock (struct wm831x*) ;
 int wm831x_reg_unlock (struct wm831x*) ;
 int wm831x_set_bits (struct wm831x*,int ,int ,int ) ;
 TYPE_1__* wm831x_wdt_cfgs ;

__attribute__((used)) static int wm831x_wdt_set_timeout(struct watchdog_device *wdt_dev,
      unsigned int timeout)
{
 struct wm831x_wdt_drvdata *driver_data = watchdog_get_drvdata(wdt_dev);
 struct wm831x *wm831x = driver_data->wm831x;
 int ret, i;

 for (i = 0; i < ARRAY_SIZE(wm831x_wdt_cfgs); i++)
  if (wm831x_wdt_cfgs[i].time == timeout)
   break;
 if (i == ARRAY_SIZE(wm831x_wdt_cfgs))
  return -EINVAL;

 ret = wm831x_reg_unlock(wm831x);
 if (ret == 0) {
  ret = wm831x_set_bits(wm831x, WM831X_WATCHDOG,
          WM831X_WDOG_TO_MASK,
          wm831x_wdt_cfgs[i].val);
  wm831x_reg_lock(wm831x);
 } else {
  dev_err(wm831x->dev, "Failed to unlock security key: %d\n",
   ret);
 }

 wdt_dev->timeout = timeout;

 return ret;
}
