
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct itd1000_state {int dummy; } ;
struct TYPE_3__ {scalar_t__ fmax_rg; int vcorg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int GVBB_I2C ;
 int PLLLOCK ;
 int VCO_CHP1_I2C ;
 int itd1000_read_reg (struct itd1000_state*,int ) ;
 TYPE_1__* itd1000_vcorg ;
 int itd1000_write_reg (struct itd1000_state*,int ,int) ;
 int itd_dbg (char*,scalar_t__,int,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void itd1000_set_vco(struct itd1000_state *state, u32 freq_khz)
{
 u8 i;
 u8 gvbb_i2c = itd1000_read_reg(state, GVBB_I2C) & 0xbf;
 u8 vco_chp1_i2c = itd1000_read_reg(state, VCO_CHP1_I2C) & 0x0f;
 u8 adcout;


 itd1000_write_reg(state, GVBB_I2C, gvbb_i2c | (1 << 6));

 for (i = 0; i < ARRAY_SIZE(itd1000_vcorg); i++) {
  if (freq_khz < itd1000_vcorg[i].fmax_rg) {
   itd1000_write_reg(state, VCO_CHP1_I2C, vco_chp1_i2c | (itd1000_vcorg[i].vcorg << 4));
   msleep(1);

   adcout = itd1000_read_reg(state, PLLLOCK) & 0x0f;

   itd_dbg("VCO: %dkHz: %d -> ADCOUT: %d %02x\n", freq_khz, itd1000_vcorg[i].vcorg, adcout, vco_chp1_i2c);

   if (adcout > 13) {
    if (!(itd1000_vcorg[i].vcorg == 7 || itd1000_vcorg[i].vcorg == 15))
     itd1000_write_reg(state, VCO_CHP1_I2C, vco_chp1_i2c | ((itd1000_vcorg[i].vcorg + 1) << 4));
   } else if (adcout < 2) {
    if (!(itd1000_vcorg[i].vcorg == 1 || itd1000_vcorg[i].vcorg == 9))
     itd1000_write_reg(state, VCO_CHP1_I2C, vco_chp1_i2c | ((itd1000_vcorg[i].vcorg - 1) << 4));
   }
   break;
  }
 }
}
