
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_uint64_t ;
typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;



__attribute__((used)) static inline bfd_uint64_t
bfd_get_bits (const void *p, int bits, bfd_boolean big_p)
{
  const bfd_byte *addr = (const bfd_byte *) p;
  bfd_uint64_t data;
  int i;
  int bytes;

  if (bits % 8 != 0)
    return 0;

  data = 0;
  bytes = bits / 8;
  for (i = 0; i < bytes; i++)
    {
      int addr_index = big_p ? i : bytes - i - 1;

      data = (data << 8) | addr[addr_index];
    }

  return data;
}
