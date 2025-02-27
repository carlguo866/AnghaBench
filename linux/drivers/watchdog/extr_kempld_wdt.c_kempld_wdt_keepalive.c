
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct kempld_wdt_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;


 int KEMPLD_WDT_KICK ;
 int kempld_get_mutex (struct kempld_device_data*) ;
 int kempld_release_mutex (struct kempld_device_data*) ;
 int kempld_write8 (struct kempld_device_data*,int ,char) ;
 struct kempld_wdt_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int kempld_wdt_keepalive(struct watchdog_device *wdd)
{
 struct kempld_wdt_data *wdt_data = watchdog_get_drvdata(wdd);
 struct kempld_device_data *pld = wdt_data->pld;

 kempld_get_mutex(pld);
 kempld_write8(pld, KEMPLD_WDT_KICK, 'K');
 kempld_release_mutex(pld);

 return 0;
}
