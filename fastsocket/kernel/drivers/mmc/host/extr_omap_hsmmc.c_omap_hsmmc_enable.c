
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int dpm_state; int mmc; } ;
struct mmc_host {int dummy; } ;




 int EINVAL ;


 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 struct omap_hsmmc_host* mmc_priv (struct mmc_host*) ;
 int omap_hsmmc_disabled_to_enabled (struct omap_hsmmc_host*) ;
 int omap_hsmmc_off_to_enabled (struct omap_hsmmc_host*) ;
 int omap_hsmmc_sleep_to_enabled (struct omap_hsmmc_host*) ;

__attribute__((used)) static int omap_hsmmc_enable(struct mmc_host *mmc)
{
 struct omap_hsmmc_host *host = mmc_priv(mmc);

 switch (host->dpm_state) {
 case 130:
  return omap_hsmmc_disabled_to_enabled(host);
 case 131:
 case 128:
  return omap_hsmmc_sleep_to_enabled(host);
 case 129:
  return omap_hsmmc_off_to_enabled(host);
 default:
  dev_dbg(mmc_dev(host->mmc), "UNKNOWN state\n");
  return -EINVAL;
 }
}
