
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_mci_priv {scalar_t__ sdmmc_base; } ;
struct mmc_host {int dummy; } ;


 int DMA_GCR_DMA_EN ;
 int DMA_GCR_SOFT_RESET ;
 scalar_t__ SDDMA_GCR ;
 struct wmt_mci_priv* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int wmt_dma_init(struct mmc_host *mmc)
{
 struct wmt_mci_priv *priv;

 priv = mmc_priv(mmc);

 writel(DMA_GCR_SOFT_RESET, priv->sdmmc_base + SDDMA_GCR);
 writel(DMA_GCR_DMA_EN, priv->sdmmc_base + SDDMA_GCR);
 if ((readl(priv->sdmmc_base + SDDMA_GCR) & DMA_GCR_DMA_EN) != 0)
  return 0;
 else
  return 1;
}
