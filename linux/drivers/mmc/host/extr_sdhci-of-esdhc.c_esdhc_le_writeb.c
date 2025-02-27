
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int esdhc_writeb_fixup (struct sdhci_host*,int,int ,int ) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void esdhc_le_writeb(struct sdhci_host *host, u8 val, int reg)
{
 int base = reg & ~0x3;
 u32 value;
 u32 ret;

 value = ioread32(host->ioaddr + base);
 ret = esdhc_writeb_fixup(host, reg, val, value);
 iowrite32(ret, host->ioaddr + base);
}
