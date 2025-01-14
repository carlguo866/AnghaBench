
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GT (int,int) ;
 int MUX (int,int,int) ;
 int NEQ (int,int ) ;

__attribute__((used)) static inline uint32_t
BIT_LENGTH(uint32_t x)
{
 uint32_t k, c;

 k = NEQ(x, 0);
 c = GT(x, 0xFFFF); x = MUX(c, x >> 16, x); k += c << 4;
 c = GT(x, 0x00FF); x = MUX(c, x >> 8, x); k += c << 3;
 c = GT(x, 0x000F); x = MUX(c, x >> 4, x); k += c << 2;
 c = GT(x, 0x0003); x = MUX(c, x >> 2, x); k += c << 1;
 k += GT(x, 0x0001);
 return k;
}
