
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct msdc_host {int dev; scalar_t__ base; int latch_ck; } ;
struct msdc_delay_phase {int maxlen; scalar_t__ start; int final_phase; int member_0; } ;
struct mmc_host {int dummy; } ;


 int EIO ;
 int MSDC_INT_DAT_LATCH_CK_SEL ;
 scalar_t__ MSDC_IOCON ;
 int MSDC_IOCON_DSPL ;
 int MSDC_IOCON_W_DSPL ;
 scalar_t__ MSDC_PATCH_BIT ;
 int PAD_DELAY_MAX ;
 int dev_dbg (int ,char*,int) ;
 struct msdc_delay_phase get_best_delay (struct msdc_host*,int) ;
 int max (int,int) ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int mmc_send_tuning (struct mmc_host*,int,int *) ;
 int msdc_set_data_delay (struct msdc_host*,int) ;
 int sdr_clr_bits (scalar_t__,int ) ;
 int sdr_set_bits (scalar_t__,int ) ;
 int sdr_set_field (scalar_t__,int ,int ) ;

__attribute__((used)) static int msdc_tune_data(struct mmc_host *mmc, u32 opcode)
{
 struct msdc_host *host = mmc_priv(mmc);
 u32 rise_delay = 0, fall_delay = 0;
 struct msdc_delay_phase final_rise_delay, final_fall_delay = { 0,};
 u8 final_delay, final_maxlen;
 int i, ret;

 sdr_set_field(host->base + MSDC_PATCH_BIT, MSDC_INT_DAT_LATCH_CK_SEL,
        host->latch_ck);
 sdr_clr_bits(host->base + MSDC_IOCON, MSDC_IOCON_DSPL);
 sdr_clr_bits(host->base + MSDC_IOCON, MSDC_IOCON_W_DSPL);
 for (i = 0 ; i < PAD_DELAY_MAX; i++) {
  msdc_set_data_delay(host, i);
  ret = mmc_send_tuning(mmc, opcode, ((void*)0));
  if (!ret)
   rise_delay |= (1 << i);
 }
 final_rise_delay = get_best_delay(host, rise_delay);

 if (final_rise_delay.maxlen >= 12 ||
     (final_rise_delay.start == 0 && final_rise_delay.maxlen >= 4))
  goto skip_fall;

 sdr_set_bits(host->base + MSDC_IOCON, MSDC_IOCON_DSPL);
 sdr_set_bits(host->base + MSDC_IOCON, MSDC_IOCON_W_DSPL);
 for (i = 0; i < PAD_DELAY_MAX; i++) {
  msdc_set_data_delay(host, i);
  ret = mmc_send_tuning(mmc, opcode, ((void*)0));
  if (!ret)
   fall_delay |= (1 << i);
 }
 final_fall_delay = get_best_delay(host, fall_delay);

skip_fall:
 final_maxlen = max(final_rise_delay.maxlen, final_fall_delay.maxlen);
 if (final_maxlen == final_rise_delay.maxlen) {
  sdr_clr_bits(host->base + MSDC_IOCON, MSDC_IOCON_DSPL);
  sdr_clr_bits(host->base + MSDC_IOCON, MSDC_IOCON_W_DSPL);
  final_delay = final_rise_delay.final_phase;
 } else {
  sdr_set_bits(host->base + MSDC_IOCON, MSDC_IOCON_DSPL);
  sdr_set_bits(host->base + MSDC_IOCON, MSDC_IOCON_W_DSPL);
  final_delay = final_fall_delay.final_phase;
 }
 msdc_set_data_delay(host, final_delay);

 dev_dbg(host->dev, "Final data pad delay: %x\n", final_delay);
 return final_delay == 0xff ? -EIO : 0;
}
