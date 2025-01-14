
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;




 int wdt_resume () ;
 int wdt_suspend () ;

__attribute__((used)) static int wdt_power_event(struct notifier_block *this, unsigned long event,
      void *ptr)
{
 switch (event) {
 case 130:
 case 129:
  return wdt_resume();
 case 131:
 case 128:
  return wdt_suspend();
 default:
  return NOTIFY_DONE;
 }
}
