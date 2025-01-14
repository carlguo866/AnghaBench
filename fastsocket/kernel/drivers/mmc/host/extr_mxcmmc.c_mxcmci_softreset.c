
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {scalar_t__ base; } ;


 scalar_t__ MMC_REG_RES_TO ;
 scalar_t__ MMC_REG_STR_STP_CLK ;
 int STR_STP_CLK_RESET ;
 int STR_STP_CLK_START_CLK ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void mxcmci_softreset(struct mxcmci_host *host)
{
 int i;


 writew(STR_STP_CLK_RESET, host->base + MMC_REG_STR_STP_CLK);
 writew(STR_STP_CLK_RESET | STR_STP_CLK_START_CLK,
   host->base + MMC_REG_STR_STP_CLK);

 for (i = 0; i < 8; i++)
  writew(STR_STP_CLK_START_CLK, host->base + MMC_REG_STR_STP_CLK);

 writew(0xff, host->base + MMC_REG_RES_TO);
}
