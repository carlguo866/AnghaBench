
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int MBOX_COUNT_DEC_ADDRESS ;
 int ath10k_sdio_read32 (struct ath10k*,int ,int *) ;
 int ath10k_warn (struct ath10k*,char*,...) ;

__attribute__((used)) static int ath10k_sdio_mbox_proc_dbg_intr(struct ath10k *ar)
{
 u32 val;
 int ret;


 ath10k_warn(ar, "firmware crashed\n");




 ret = ath10k_sdio_read32(ar, MBOX_COUNT_DEC_ADDRESS, &val);
 if (ret)
  ath10k_warn(ar, "failed to clear debug interrupt: %d\n", ret);

 return ret;
}
