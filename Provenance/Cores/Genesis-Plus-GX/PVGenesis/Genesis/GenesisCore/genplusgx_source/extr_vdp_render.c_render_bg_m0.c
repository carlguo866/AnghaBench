
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;


 int** linebuf ;
 int* reg ;
 int* vram ;

void render_bg_m0(int line, int width)
{
  uint8 color, pattern;
  uint16 name;

  uint8 *lb = &linebuf[0][0x20];
  uint8 *nt = &vram[((reg[2] << 10) & 0x3C00) + ((line & 0xF8) << 2)];
  uint8 *ct = &vram[((reg[3] << 6) & 0x3FC0)];
  uint8 *pg = &vram[((reg[4] << 11) & 0x3800) + (line & 7)];


  width = 32;

  do
  {
    name = *nt++;
    color = ct[name >> 3];
    pattern = pg[name << 3];

    *lb++ = 0x10 | ((color >> (((pattern >> 7) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 6) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 5) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 4) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 3) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 2) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 1) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 0) & 1) << 2)) & 0x0F);
  }
  while (--width);
}
