
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BITMAP_FIRST_BYTE_MASK (unsigned int) ;
 int BITMAP_LAST_BYTE_MASK (unsigned int const) ;
 unsigned int BITS_PER_BYTE ;
 int BIT_BYTE (unsigned int) ;

__attribute__((used)) static void le_bitmap_set(unsigned long *map, unsigned int start, int len)
{
 u8 *p = ((u8 *)map) + BIT_BYTE(start);
 const unsigned int size = start + len;
 int bits_to_set = BITS_PER_BYTE - (start % BITS_PER_BYTE);
 u8 mask_to_set = BITMAP_FIRST_BYTE_MASK(start);

 while (len - bits_to_set >= 0) {
  *p |= mask_to_set;
  len -= bits_to_set;
  bits_to_set = BITS_PER_BYTE;
  mask_to_set = ~0;
  p++;
 }
 if (len) {
  mask_to_set &= BITMAP_LAST_BYTE_MASK(size);
  *p |= mask_to_set;
 }
}
