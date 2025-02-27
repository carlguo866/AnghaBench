
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int CLEAR_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (unsigned int,int ) ;
 int F_CF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 unsigned int PARITY (unsigned int) ;
 int SET_FLAG (int ) ;

__attribute__((used)) static uint16_t
sar_word(struct x86emu *emu, uint16_t d, uint8_t s)
{
 unsigned int cnt, res, cf, mask, sf;

 sf = d & 0x8000;
 cnt = s % 16;
 res = d;
 if (cnt > 0 && cnt < 16) {
  mask = (1 << (16 - cnt)) - 1;
  cf = d & (1 << (cnt - 1));
  res = (d >> cnt) & mask;
  CONDITIONAL_SET_FLAG(cf, F_CF);
  if (sf) {
   res |= ~mask;
  }
  CONDITIONAL_SET_FLAG((res & 0xffff) == 0, F_ZF);
  CONDITIONAL_SET_FLAG(res & 0x8000, F_SF);
  CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);
 } else if (cnt >= 16) {
  if (sf) {
   res = 0xffff;
   SET_FLAG(F_CF);
   CLEAR_FLAG(F_ZF);
   SET_FLAG(F_SF);
   SET_FLAG(F_PF);
  } else {
   res = 0;
   CLEAR_FLAG(F_CF);
   SET_FLAG(F_ZF);
   CLEAR_FLAG(F_SF);
   CLEAR_FLAG(F_PF);
  }
 }
 return (uint16_t) res;
}
