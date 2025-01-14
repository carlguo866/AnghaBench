
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mmc_host {int dummy; } ;
struct dw_mci_slot {struct mmc_host* mmc; struct dw_mci* host; } ;
struct dw_mci_exynos_priv_data {scalar_t__ tuned_sample; } ;
struct dw_mci {struct dw_mci_exynos_priv_data* priv; } ;
typedef scalar_t__ s8 ;


 int EIO ;
 int TMOUT ;
 scalar_t__ dw_mci_exynos_get_best_clksmpl (int) ;
 int dw_mci_exynos_get_clksmpl (struct dw_mci*) ;
 int dw_mci_exynos_move_next_clksmpl (struct dw_mci*) ;
 int dw_mci_exynos_set_clksmpl (struct dw_mci*,scalar_t__) ;
 int mci_writel (struct dw_mci*,int ,int ) ;
 int mmc_send_tuning (struct mmc_host*,int ,int *) ;

__attribute__((used)) static int dw_mci_exynos_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
{
 struct dw_mci *host = slot->host;
 struct dw_mci_exynos_priv_data *priv = host->priv;
 struct mmc_host *mmc = slot->mmc;
 u8 start_smpl, smpl, candiates = 0;
 s8 found = -1;
 int ret = 0;

 start_smpl = dw_mci_exynos_get_clksmpl(host);

 do {
  mci_writel(host, TMOUT, ~0);
  smpl = dw_mci_exynos_move_next_clksmpl(host);

  if (!mmc_send_tuning(mmc, opcode, ((void*)0)))
   candiates |= (1 << smpl);

 } while (start_smpl != smpl);

 found = dw_mci_exynos_get_best_clksmpl(candiates);
 if (found >= 0) {
  dw_mci_exynos_set_clksmpl(host, found);
  priv->tuned_sample = found;
 } else {
  ret = -EIO;
 }

 return ret;
}
