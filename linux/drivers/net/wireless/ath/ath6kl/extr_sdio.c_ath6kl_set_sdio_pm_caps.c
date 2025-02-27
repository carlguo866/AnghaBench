
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct ath6kl_sdio {struct sdio_func* func; } ;
struct ath6kl {int dummy; } ;
typedef int mmc_pm_flag_t ;


 int ATH6KL_DBG_SUSPEND ;
 int EINVAL ;
 int MMC_PM_KEEP_POWER ;
 int MMC_PM_WAKE_SDIO_IRQ ;
 int ath6kl_dbg (int ,char*,int) ;
 int ath6kl_err (char*,int) ;
 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 int sdio_get_host_pm_caps (struct sdio_func*) ;
 int sdio_set_host_pm_flags (struct sdio_func*,int) ;

__attribute__((used)) static int ath6kl_set_sdio_pm_caps(struct ath6kl *ar)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);
 struct sdio_func *func = ar_sdio->func;
 mmc_pm_flag_t flags;
 int ret;

 flags = sdio_get_host_pm_caps(func);

 ath6kl_dbg(ATH6KL_DBG_SUSPEND, "sdio suspend pm_caps 0x%x\n", flags);

 if (!(flags & MMC_PM_WAKE_SDIO_IRQ) ||
     !(flags & MMC_PM_KEEP_POWER))
  return -EINVAL;

 ret = sdio_set_host_pm_flags(func, MMC_PM_KEEP_POWER);
 if (ret) {
  ath6kl_err("set sdio keep pwr flag failed: %d\n", ret);
  return ret;
 }


 ret = sdio_set_host_pm_flags(func, MMC_PM_WAKE_SDIO_IRQ);
 if (ret)
  ath6kl_err("set sdio wake irq flag failed: %d\n", ret);

 return ret;
}
