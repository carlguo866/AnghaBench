
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {scalar_t__ base; } ;


 scalar_t__ MSDC_INTEN ;
 int MSDC_INTEN_SDIOIRQ ;
 scalar_t__ SDC_CFG ;
 int SDC_CFG_SDIOIDE ;
 int sdr_clr_bits (scalar_t__,int ) ;
 int sdr_set_bits (scalar_t__,int ) ;

__attribute__((used)) static void __msdc_enable_sdio_irq(struct msdc_host *host, int enb)
{
 if (enb) {
  sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
  sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
 } else {
  sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
  sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
 }
}
