
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int FUZ_rotl32 (int,int) ;
 int prime1 ;
 scalar_t__ prime2 ;

unsigned int FUZ_rand(unsigned int* src)
{
    U32 rand32 = *src;
    rand32 *= prime1;
    rand32 += prime2;
    rand32 = FUZ_rotl32(rand32, 13);
    *src = rand32;
    return rand32 >> 5;
}
