
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct amd64_pvt {int dct_sel_lo; } ;


 scalar_t__ dct_ganging_enabled (struct amd64_pvt*) ;
 scalar_t__ dct_high_range_enabled (struct amd64_pvt*) ;
 scalar_t__ dct_interleave_enabled (struct amd64_pvt*) ;
 int dct_sel_interleave_addr (struct amd64_pvt*) ;
 int hweight8 (int) ;
 int hweight_long (int) ;

__attribute__((used)) static u8 f1x_determine_channel(struct amd64_pvt *pvt, u64 sys_addr,
    bool hi_range_sel, u8 intlv_en)
{
 u8 dct_sel_high = (pvt->dct_sel_lo >> 1) & 1;

 if (dct_ganging_enabled(pvt))
  return 0;

 if (hi_range_sel)
  return dct_sel_high;




 if (dct_interleave_enabled(pvt)) {
  u8 intlv_addr = dct_sel_interleave_addr(pvt);


  if (!intlv_addr)
   return sys_addr >> 6 & 1;

  if (intlv_addr & 0x2) {
   u8 shift = intlv_addr & 0x1 ? 9 : 6;
   u32 temp = hweight_long((u32) ((sys_addr >> 16) & 0x1F)) % 2;

   return ((sys_addr >> shift) & 1) ^ temp;
  }

  return (sys_addr >> (12 + hweight8(intlv_en))) & 1;
 }

 if (dct_high_range_enabled(pvt))
  return ~dct_sel_high & 1;

 return 0;
}
