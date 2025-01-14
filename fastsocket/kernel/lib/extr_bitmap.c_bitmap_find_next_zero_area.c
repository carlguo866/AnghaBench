
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __ALIGN_MASK (unsigned long,unsigned long) ;
 unsigned long find_next_bit (unsigned long*,unsigned long,unsigned long) ;
 unsigned long find_next_zero_bit (unsigned long*,unsigned long,unsigned long) ;

unsigned long bitmap_find_next_zero_area(unsigned long *map,
      unsigned long size,
      unsigned long start,
      unsigned int nr,
      unsigned long align_mask)
{
 unsigned long index, end, i;
again:
 index = find_next_zero_bit(map, size, start);


 index = __ALIGN_MASK(index, align_mask);

 end = index + nr;
 if (end > size)
  return end;
 i = find_next_bit(map, end, index);
 if (i < end) {
  start = i + 1;
  goto again;
 }
 return index;
}
