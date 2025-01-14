
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int BIT_COC_CALIBRATION_DONE ;
 int BIT_COC_STAT_0_PLL_LOCKED ;
 int BIT_TDM_INTR_SYNC_DATA ;
 int BIT_TDM_INTR_SYNC_WAIT ;
 int MSK_COC_STAT_0_FSM_STATE ;
 int REG_COC_CTLB ;
 int REG_COC_INTR ;
 int REG_COC_STAT_0 ;
 int REG_TRXINTMH ;
 int sii8620_readb (struct sii8620*,int ) ;
 int sii8620_write (struct sii8620*,int ,int) ;
 int sii8620_write_seq_static (struct sii8620*,int ,int ,int ,int) ;

__attribute__((used)) static void sii8620_irq_coc(struct sii8620 *ctx)
{
 u8 stat = sii8620_readb(ctx, REG_COC_INTR);

 if (stat & BIT_COC_CALIBRATION_DONE) {
  u8 cstat = sii8620_readb(ctx, REG_COC_STAT_0);

  cstat &= BIT_COC_STAT_0_PLL_LOCKED | MSK_COC_STAT_0_FSM_STATE;
  if (cstat == (BIT_COC_STAT_0_PLL_LOCKED | 0x02)) {
   sii8620_write_seq_static(ctx,
    REG_COC_CTLB, 0,
    REG_TRXINTMH, BIT_TDM_INTR_SYNC_DATA
           | BIT_TDM_INTR_SYNC_WAIT
   );
  }
 }

 sii8620_write(ctx, REG_COC_INTR, stat);
}
