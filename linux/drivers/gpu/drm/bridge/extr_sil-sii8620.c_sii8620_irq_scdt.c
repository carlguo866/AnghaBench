
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int BIT_INTR_SCDT_CHANGE ;
 int BIT_TMDS_CSTAT_P3_SCDT ;
 int REG_INTR5 ;
 int REG_TMDS_CSTAT_P3 ;
 int sii8620_readb (struct sii8620*,int ) ;
 int sii8620_start_video (struct sii8620*) ;
 int sii8620_write (struct sii8620*,int ,int) ;

__attribute__((used)) static void sii8620_irq_scdt(struct sii8620 *ctx)
{
 u8 stat = sii8620_readb(ctx, REG_INTR5);

 if (stat & BIT_INTR_SCDT_CHANGE) {
  u8 cstat = sii8620_readb(ctx, REG_TMDS_CSTAT_P3);

  if (cstat & BIT_TMDS_CSTAT_P3_SCDT)
   sii8620_start_video(ctx);
 }

 sii8620_write(ctx, REG_INTR5, stat);
}
