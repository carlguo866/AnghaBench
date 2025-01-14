
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sseu_dev_info {scalar_t__* eu_mask; int max_eus_per_subslice; } ;


 int BITS_PER_BYTE ;
 int GEN_SSEU_STRIDE (int ) ;
 int sseu_eu_idx (struct sseu_dev_info const*,int,int) ;

__attribute__((used)) static u16 sseu_get_eus(const struct sseu_dev_info *sseu, int slice,
   int subslice)
{
 int i, offset = sseu_eu_idx(sseu, slice, subslice);
 u16 eu_mask = 0;

 for (i = 0; i < GEN_SSEU_STRIDE(sseu->max_eus_per_subslice); i++) {
  eu_mask |= ((u16)sseu->eu_mask[offset + i]) <<
   (i * BITS_PER_BYTE);
 }

 return eu_mask;
}
