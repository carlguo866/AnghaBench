
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dev; } ;


 int WM831X_WATCHDOG ;
 int WM831X_WDOG_ENA ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wdt_mutex ;
 int wm831x_reg_lock (struct wm831x*) ;
 int wm831x_reg_unlock (struct wm831x*) ;
 int wm831x_set_bits (struct wm831x*,int ,int ,int ) ;

__attribute__((used)) static int wm831x_wdt_start(struct wm831x *wm831x)
{
 int ret;

 mutex_lock(&wdt_mutex);

 ret = wm831x_reg_unlock(wm831x);
 if (ret == 0) {
  ret = wm831x_set_bits(wm831x, WM831X_WATCHDOG,
          WM831X_WDOG_ENA, WM831X_WDOG_ENA);
  wm831x_reg_lock(wm831x);
 } else {
  dev_err(wm831x->dev, "Failed to unlock security key: %d\n",
   ret);
 }

 mutex_unlock(&wdt_mutex);

 return ret;
}
