
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int TEX_SIZE ;
 int stb_rand () ;
 int** texture ;

void build_base_texture(int n)
{
   int x,y;
   uint32 color = stb_rand() | 0x808080;
   for (y=0; y<TEX_SIZE; ++y)
      for (x=0; x<TEX_SIZE; ++x) {
         texture[y][x] = (color + (stb_rand()&0x1f1f1f))|0xff000000;
      }
}
