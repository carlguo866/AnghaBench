
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cd_irq; int cd_wake_enabled; } ;
struct mmc_host {int caps; TYPE_1__ slot; } ;


 int MMC_CAP_CD_WAKE ;
 int disable_irq_wake (scalar_t__) ;
 int enable_irq_wake (scalar_t__) ;

int mmc_gpio_set_cd_wake(struct mmc_host *host, bool on)
{
 int ret = 0;

 if (!(host->caps & MMC_CAP_CD_WAKE) ||
     host->slot.cd_irq < 0 ||
     on == host->slot.cd_wake_enabled)
  return 0;

 if (on) {
  ret = enable_irq_wake(host->slot.cd_irq);
  host->slot.cd_wake_enabled = !ret;
 } else {
  disable_irq_wake(host->slot.cd_irq);
  host->slot.cd_wake_enabled = 0;
 }

 return ret;
}
