
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ BIT_B (int) ;
 int BIT_F (int) ;
 int CFLAG_16 (int) ;
 scalar_t__ COND_CS () ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int EA_PCIX_16 () ;
 int EXCEPTION_CHK ;
 int FLAG_C ;
 int FLAG_Z ;
 int MAKE_INT_16 (int) ;
 int OPER_I_16 () ;
 int* REG_DA ;
 int m68ki_exception_illegal () ;
 int m68ki_exception_trap (int ) ;
 int m68ki_read_pcrel_16 (int) ;

void m68k_op_chk2cmp2_16_pcix(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  uint word2 = OPER_I_16();
  uint compare = REG_DA[(word2 >> 12) & 15]&0xffff;
  uint ea = EA_PCIX_16();
  uint lower_bound = m68ki_read_pcrel_16(ea);
  uint upper_bound = m68ki_read_pcrel_16(ea + 2);

  if(!BIT_F(word2))
   FLAG_C = MAKE_INT_16(compare) - MAKE_INT_16(lower_bound);
  else
   FLAG_C = compare - lower_bound;
  FLAG_Z = !((upper_bound==compare) | (lower_bound==compare));
  FLAG_C = CFLAG_16(FLAG_C);
  if(COND_CS())
  {
   if(BIT_B(word2))
    m68ki_exception_trap(EXCEPTION_CHK);
   return;
  }

  if(!BIT_F(word2))
   FLAG_C = MAKE_INT_16(upper_bound) - MAKE_INT_16(compare);
  else
   FLAG_C = upper_bound - compare;
  FLAG_C = CFLAG_16(FLAG_C);
  if(COND_CS() && BIT_B(word2))
    m68ki_exception_trap(EXCEPTION_CHK);
  return;
 }
 m68ki_exception_illegal();
}
