
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct sched_watchdog {int id; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {int timeout; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOSYS ;
 int HYPERVISOR_sched_op (int ,struct sched_watchdog*) ;
 int SCHEDOP_watchdog ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int nowayout ;
 int timeout ;
 int watchdog_init_timeout (TYPE_1__*,int ,int *) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int watchdog_stop_on_reboot (TYPE_1__*) ;
 int watchdog_stop_on_unregister (TYPE_1__*) ;
 TYPE_1__ xen_wdt_dev ;

__attribute__((used)) static int xen_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct sched_watchdog wd = { .id = ~0 };
 int ret = HYPERVISOR_sched_op(SCHEDOP_watchdog, &wd);

 if (ret == -ENOSYS) {
  dev_err(dev, "watchdog not supported by hypervisor\n");
  return -ENODEV;
 }

 if (ret != -EINVAL) {
  dev_err(dev, "unexpected hypervisor error (%d)\n", ret);
  return -ENODEV;
 }

 watchdog_init_timeout(&xen_wdt_dev, timeout, ((void*)0));
 watchdog_set_nowayout(&xen_wdt_dev, nowayout);
 watchdog_stop_on_reboot(&xen_wdt_dev);
 watchdog_stop_on_unregister(&xen_wdt_dev);

 ret = devm_watchdog_register_device(dev, &xen_wdt_dev);
 if (ret)
  return ret;

 dev_info(dev, "initialized (timeout=%ds, nowayout=%d)\n",
   xen_wdt_dev.timeout, nowayout);

 return 0;
}
