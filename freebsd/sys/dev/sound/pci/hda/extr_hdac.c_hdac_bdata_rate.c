
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static int
hdac_bdata_rate(uint16_t fmt, int output)
{
 static const int bbits[8] = { 8, 16, 20, 24, 32, 32, 32, 32 };
 int rate, bits;

 rate = 48000;
 rate *= ((fmt >> 11) & 0x07) + 1;
 bits = bbits[(fmt >> 4) & 0x03];
 bits *= (fmt & 0x0f) + 1;
 if (!output)
  bits = ((bits + 7) & ~0x07) + 10;
 return (rate * bits);
}
