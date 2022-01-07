
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_TYPE_R ;
 int MSR_TYPE_W ;
 int __clear_bit (int,unsigned long*) ;
 int test_bit (int,unsigned long*) ;

__attribute__((used)) static void nested_vmx_disable_intercept_for_msr(unsigned long *msr_bitmap_l1,
            unsigned long *msr_bitmap_nested,
            u32 msr, int type)
{
 int f = sizeof(unsigned long);






 if (msr <= 0x1fff) {
  if (type & MSR_TYPE_R &&
     !test_bit(msr, msr_bitmap_l1 + 0x000 / f))

   __clear_bit(msr, msr_bitmap_nested + 0x000 / f);

  if (type & MSR_TYPE_W &&
     !test_bit(msr, msr_bitmap_l1 + 0x800 / f))

   __clear_bit(msr, msr_bitmap_nested + 0x800 / f);

 } else if ((msr >= 0xc0000000) && (msr <= 0xc0001fff)) {
  msr &= 0x1fff;
  if (type & MSR_TYPE_R &&
     !test_bit(msr, msr_bitmap_l1 + 0x400 / f))

   __clear_bit(msr, msr_bitmap_nested + 0x400 / f);

  if (type & MSR_TYPE_W &&
     !test_bit(msr, msr_bitmap_l1 + 0xc00 / f))

   __clear_bit(msr, msr_bitmap_nested + 0xc00 / f);

 }
}
