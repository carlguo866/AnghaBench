
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int SDHCI_TRANSFER_MODE ;
 int esdhc_writew_fixup (struct sdhci_host*,int,int ,int ) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void esdhc_le_writew(struct sdhci_host *host, u16 val, int reg)
{
 int base = reg & ~0x3;
 u32 value;
 u32 ret;

 value = ioread32(host->ioaddr + base);
 ret = esdhc_writew_fixup(host, reg, val, value);
 if (reg != SDHCI_TRANSFER_MODE)
  iowrite32(ret, host->ioaddr + base);
}
