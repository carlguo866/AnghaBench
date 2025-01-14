
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8 ;
struct TYPE_2__ {void* b; void* g; void* r; } ;


 TYPE_1__** vdp_palette ;

void make_vdp_palette(void)
{
  uint8 lut[3][8] =
  {
    {0x00, 0x04, 0x08, 0x0C, 0x10, 0x14, 0x18, 0x1C},
    {0x00, 0x08, 0x10, 0x18, 0x20, 0x28, 0x30, 0x38},
    {0x20, 0x24, 0x28, 0x2C, 0x30, 0x34, 0x38, 0x3C},
  };

  int j;
  for(j = 0; j < 0x600; j += 1)
  {

    int r = (j >> 6) & 7;
    int g = (j >> 3) & 7;
    int b = (j >> 0) & 7;
    int i = (j >> 9) & 3;

    vdp_palette[i][j & 0x1FF].r = lut[i][r];
    vdp_palette[i][j & 0x1FF].g = lut[i][g];
    vdp_palette[i][j & 0x1FF].b = lut[i][b];
  }
}
