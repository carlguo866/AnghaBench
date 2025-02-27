
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {int revision; } ;
typedef enum dib8000_power_mode { ____Placeholder_dib8000_power_mode } dib8000_power_mode ;




 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dprintk (char*,int,int,int,int,int) ;

__attribute__((used)) static void dib8000_set_power_mode(struct dib8000_state *state, enum dib8000_power_mode mode)
{

 u16 reg_774 = 0x3fff, reg_775 = 0xffff, reg_776 = 0xffff,
  reg_900 = (dib8000_read_word(state, 900) & 0xfffc) | 0x3,
  reg_1280;

 if (state->revision != 0x8090)
  reg_1280 = (dib8000_read_word(state, 1280) & 0x00ff) | 0xff00;
 else
  reg_1280 = (dib8000_read_word(state, 1280) & 0x707f) | 0x8f80;


 switch (mode) {

 case 129:
  reg_774 = 0x0000;
  reg_775 = 0x0000;
  reg_776 = 0x0000;
  reg_900 &= 0xfffc;
  if (state->revision != 0x8090)
   reg_1280 &= 0x00ff;
  else
   reg_1280 &= 0x707f;
  break;
 case 128:
  if (state->revision != 0x8090)
   reg_1280 &= 0x00ff;
  else
   reg_1280 &= 0xfa7b;
  break;
 }

 dprintk("powermode : 774 : %x ; 775 : %x; 776 : %x ; 900 : %x; 1280 : %x\n", reg_774, reg_775, reg_776, reg_900, reg_1280);
 dib8000_write_word(state, 774, reg_774);
 dib8000_write_word(state, 775, reg_775);
 dib8000_write_word(state, 776, reg_776);
 dib8000_write_word(state, 900, reg_900);
 dib8000_write_word(state, 1280, reg_1280);
}
