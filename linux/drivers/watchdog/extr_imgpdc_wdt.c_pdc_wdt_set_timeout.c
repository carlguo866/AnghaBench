
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct TYPE_2__ {unsigned int timeout; } ;
struct pdc_wdt_dev {TYPE_1__ wdt_dev; } ;


 int __pdc_wdt_set_timeout (struct pdc_wdt_dev*) ;
 struct pdc_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int pdc_wdt_set_timeout(struct watchdog_device *wdt_dev,
          unsigned int new_timeout)
{
 struct pdc_wdt_dev *wdt = watchdog_get_drvdata(wdt_dev);

 wdt->wdt_dev.timeout = new_timeout;

 __pdc_wdt_set_timeout(wdt);

 return 0;
}
