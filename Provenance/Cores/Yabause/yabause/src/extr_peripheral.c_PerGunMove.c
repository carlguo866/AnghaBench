
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_3__ {int* gunbits; } ;
typedef TYPE_1__ PerGun_struct ;



void PerGunMove(PerGun_struct * gun, s32 dispx, s32 dispy)
{
   int x, y;
   int x2, y2;
   x = (*(gun->gunbits+1) << 8) + *(gun->gunbits+2) + (dispx / 4);
   y = (*(gun->gunbits+3) << 8) + *(gun->gunbits+4) - (dispy / 4);

   if (x < 0)
      x = 0;
   else if (x >= 320)
      x = 319;

   if (y < 0)
      y = 0;
   else if (y >= 224)
      y = 223;

   *(gun->gunbits+1) = x >> 8;
   *(gun->gunbits+2) = x;
   *(gun->gunbits+3) = y >> 8;
   *(gun->gunbits+4) = y;
}
