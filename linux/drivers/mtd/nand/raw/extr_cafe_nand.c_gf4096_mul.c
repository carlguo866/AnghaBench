
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int gf64_mul (int,int) ;

__attribute__((used)) static u16 gf4096_mul(u16 a, u16 b)
{
 u8 ah, al, bh, bl, ch, cl;

 ah = a >> 6;
 al = a & 0x3f;
 bh = b >> 6;
 bl = b & 0x3f;

 ch = gf64_mul(ah ^ al, bh ^ bl) ^ gf64_mul(al, bl);
 cl = gf64_mul(gf64_mul(ah, bh), 0x21) ^ gf64_mul(al, bl);

 return (ch << 6) ^ cl;
}
