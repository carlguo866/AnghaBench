
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;


 size_t DY ;
 size_t FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 size_t FLAG_X ;
 size_t FLAG_Z ;
 scalar_t__ GET_MSB_16 (size_t) ;
 size_t MASK_OUT_ABOVE_16 (size_t) ;
 size_t MASK_OUT_BELOW_16 (size_t) ;
 int NFLAG_16 (size_t) ;
 int REG_IR ;
 int VFLAG_CLEAR ;
 size_t* m68ki_shift_16_table ;

void m68k_op_asr_16_s(void)
{
 uint* r_dst = &DY;
 uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
 uint src = MASK_OUT_ABOVE_16(*r_dst);
 uint res = src >> shift;

 if(GET_MSB_16(src))
  res |= m68ki_shift_16_table[shift];

 *r_dst = MASK_OUT_BELOW_16(*r_dst) | res;

 FLAG_N = NFLAG_16(res);
 FLAG_Z = res;
 FLAG_V = VFLAG_CLEAR;
 FLAG_X = FLAG_C = src << (9-shift);
}
