
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void xor_128(u8 *a, u8 *b, u8 *out)
{
 int i;

 for (i = 0; i < 16; i++)
  out[i] = a[i] ^ b[i];
}
