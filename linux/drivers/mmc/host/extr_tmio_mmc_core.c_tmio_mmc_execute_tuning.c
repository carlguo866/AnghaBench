
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tmio_mmc_host {int (* init_tuning ) (struct tmio_mmc_host*) ;int (* select_tuning ) (struct tmio_mmc_host*) ;int tap_num; TYPE_1__* pdev; int taps; int (* prepare_tuning ) (struct tmio_mmc_host*,int) ;} ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int BITS_PER_BYTE ;
 int bitmap_zero (int ,int) ;
 int dev_warn (int *,char*) ;
 int dev_warn_once (int *,char*) ;
 struct tmio_mmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_send_tuning (struct mmc_host*,int ,int *) ;
 int set_bit (int,int ) ;
 int stub1 (struct tmio_mmc_host*) ;
 int stub2 (struct tmio_mmc_host*,int) ;
 int stub3 (struct tmio_mmc_host*) ;
 int tmio_mmc_hw_reset (struct mmc_host*) ;

__attribute__((used)) static int tmio_mmc_execute_tuning(struct mmc_host *mmc, u32 opcode)
{
 struct tmio_mmc_host *host = mmc_priv(mmc);
 int i, ret = 0;

 if (!host->init_tuning || !host->select_tuning)

  goto out;

 host->tap_num = host->init_tuning(host);
 if (!host->tap_num)

  goto out;

 if (host->tap_num * 2 >= sizeof(host->taps) * BITS_PER_BYTE) {
  dev_warn_once(&host->pdev->dev,
   "Too many taps, skipping tuning. Please consider updating size of taps field of tmio_mmc_host\n");
  goto out;
 }

 bitmap_zero(host->taps, host->tap_num * 2);


 for (i = 0; i < 2 * host->tap_num; i++) {
  if (host->prepare_tuning)
   host->prepare_tuning(host, i % host->tap_num);

  ret = mmc_send_tuning(mmc, opcode, ((void*)0));
  if (ret == 0)
   set_bit(i, host->taps);
 }

 ret = host->select_tuning(host);

out:
 if (ret < 0) {
  dev_warn(&host->pdev->dev, "Tuning procedure failed\n");
  tmio_mmc_hw_reset(mmc);
 }

 return ret;
}
