
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int ND (char*,int,unsigned int,int) ;
 int ONE_FP ;
 int QFQ_MIN_SLOT_SHIFT ;
 int __fls (unsigned long) ;

__attribute__((used)) static int qfq_calc_index(uint32_t inv_w, unsigned int maxlen)
{
 uint64_t slot_size = (uint64_t)maxlen *inv_w;
 unsigned long size_map;
 int index = 0;

 size_map = (unsigned long)(slot_size >> QFQ_MIN_SLOT_SHIFT);
 if (!size_map)
  goto out;

 index = __fls(size_map) + 1;
 index -= !(slot_size - (1ULL << (index + QFQ_MIN_SLOT_SHIFT - 1)));

 if (index < 0)
  index = 0;

out:
 ND("W = %d, L = %d, I = %d\n", ONE_FP/inv_w, maxlen, index);
 return index;
}
