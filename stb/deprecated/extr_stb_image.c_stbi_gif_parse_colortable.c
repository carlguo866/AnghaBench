
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__uint8 ;
typedef int stbi ;


 int get8u (int *) ;

__attribute__((used)) static void stbi_gif_parse_colortable(stbi *s, stbi__uint8 pal[256][4], int num_entries, int transp)
{
   int i;
   for (i=0; i < num_entries; ++i) {
      pal[i][2] = get8u(s);
      pal[i][1] = get8u(s);
      pal[i][0] = get8u(s);
      pal[i][3] = transp ? 0 : 255;
   }
}
