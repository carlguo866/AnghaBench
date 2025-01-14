
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ find_next_bit (unsigned long*,scalar_t__,scalar_t__) ;
 scalar_t__ find_next_zero_bit (unsigned long*,scalar_t__,scalar_t__) ;

__attribute__((used)) static u16 npc_mcam_get_free_count(unsigned long *map, u16 start, u16 end)
{
 u16 index, next;
 u16 fcnt = 0;

again:
 if (start >= end)
  return fcnt;

 index = find_next_zero_bit(map, end, start);
 if (index >= end)
  return fcnt;

 next = find_next_bit(map, end, index);
 if (next <= end) {
  fcnt += next - index;
  start = next + 1;
  goto again;
 }

 fcnt += end - index;
 return fcnt;
}
