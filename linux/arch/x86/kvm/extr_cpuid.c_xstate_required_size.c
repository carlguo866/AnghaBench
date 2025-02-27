
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int XFEATURE_MASK_EXTEND ;
 scalar_t__ XSAVE_HDR_OFFSET ;
 scalar_t__ XSAVE_HDR_SIZE ;
 int cpuid_count (int,int,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 xstate_required_size(u64 xstate_bv, bool compacted)
{
 int feature_bit = 0;
 u32 ret = XSAVE_HDR_SIZE + XSAVE_HDR_OFFSET;

 xstate_bv &= XFEATURE_MASK_EXTEND;
 while (xstate_bv) {
  if (xstate_bv & 0x1) {
          u32 eax, ebx, ecx, edx, offset;
          cpuid_count(0xD, feature_bit, &eax, &ebx, &ecx, &edx);
   offset = compacted ? ret : ebx;
   ret = max(ret, offset + eax);
  }

  xstate_bv >>= 1;
  feature_bit++;
 }

 return ret;
}
