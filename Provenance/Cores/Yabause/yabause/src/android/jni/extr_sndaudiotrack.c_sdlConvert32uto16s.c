
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int s32 ;
typedef int s16 ;


 int soundmaxvolume ;
 int soundvolume ;

__attribute__((used)) static void sdlConvert32uto16s(s32 *srcL, s32 *srcR, s16 *dst, u32 len) {
   u32 i;

   for (i = 0; i < len; i++)
   {

      *srcL = ( *srcL *soundvolume ) / soundmaxvolume;
      if (*srcL > 0x7FFF) *dst = 0x7FFF;
      else if (*srcL < -0x8000) *dst = -0x8000;
      else *dst = *srcL;
      srcL++;
      dst++;

   *srcR = ( *srcR *soundvolume ) / soundmaxvolume;
      if (*srcR > 0x7FFF) *dst = 0x7FFF;
      else if (*srcR < -0x8000) *dst = -0x8000;
      else *dst = *srcR;
      srcR++;
      dst++;
   }
}
