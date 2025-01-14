
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int addrsize ;

__attribute__((used)) static int
getINT (unsigned char *ptr, int *idx, int size, int max)
{
  int n = 0;
  int byte = *idx / 8;

  if (byte >= max)
    return 0;

  if (size == -2)
    size = addrsize;

  if (size == -1)
    size = 0;

  switch (size)
    {
    case 0:
      return 0;
    case 1:
      n = (ptr[byte]);
      break;
    case 2:
      n = (ptr[byte + 0] << 8) + ptr[byte + 1];
      break;
    case 4:
      n = (ptr[byte + 0] << 24) + (ptr[byte + 1] << 16) + (ptr[byte + 2] << 8) + (ptr[byte + 3]);
      break;
    default:
      abort ();
    }

  *idx += size * 8;
  return n;
}
