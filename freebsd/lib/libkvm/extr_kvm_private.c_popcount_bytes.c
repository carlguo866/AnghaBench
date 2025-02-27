
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ BITS_IN (int ) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ __bitcount64 (int ) ;
 int bitmask_range (int ,scalar_t__,scalar_t__) ;
 scalar_t__ roundup2 (scalar_t__,scalar_t__) ;

__attribute__((used)) static uint64_t
popcount_bytes(uint64_t *addr, uint32_t bit0, uint32_t bitN)
{
 uint32_t res = bitN - bit0;
 uint64_t count = 0;
 uint32_t bound;


 if ((bit0 % BITS_IN(*addr)) != 0) {
  bound = MIN(bitN, roundup2(bit0, BITS_IN(*addr)));
  count += __bitcount64(bitmask_range(*addr, bit0, bound));
  res -= (bound - bit0);
  addr++;
 }

 while (res > 0) {
  bound = MIN(res, BITS_IN(*addr));
  count += __bitcount64(bitmask_range(*addr, 0, bound));
  res -= bound;
  addr++;
 }

 return (count);
}
