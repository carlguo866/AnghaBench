
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ocs_lg2 (int) ;

__attribute__((used)) static inline uint32_t
sli_convert_mask_to_count(uint32_t method, uint32_t mask)
{
 uint32_t count = 0;

 if (method) {
  count = 1 << ocs_lg2(mask);
  count *= 16;
 } else {
  count = mask;
 }

 return count;
}
