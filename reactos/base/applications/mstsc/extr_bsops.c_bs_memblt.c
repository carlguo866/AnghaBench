
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bs_copy_mem (char*,char*,int) ;
 int bs_set_pixel (int,int,int,int,int ) ;
 scalar_t__ bs_warp_coords (int*,int*,int*,int*,int*,int*) ;
 int g_Bpp ;
 char* get_bs_ptr (int,int) ;

void
bs_memblt(int opcode, int x, int y, int cx, int cy,
          void * srcdata, int srcwidth, int srcheight,
          int srcx, int srcy)
{
  int i;
  int j;
  int p;
  char * dst;
  char * src;

  if (bs_warp_coords(&x, &y, &cx, &cy, &srcx, &srcy))
  {
    if (opcode == 12)
    {
      if (g_Bpp == 1)
      {
        src = (char *) (((unsigned char *) srcdata) + srcy * srcwidth + srcx);
      }
      else if (g_Bpp == 2)
      {
        src = (char *) (((unsigned short *) srcdata) + srcy * srcwidth + srcx);
      }
      else
      {
        src = (char *) (((unsigned int *) srcdata) + srcy * srcwidth + srcx);
      }
      for (i = 0; i < cy; i++)
      {
        dst = get_bs_ptr(x, y + i);
        if (dst != 0)
        {
          bs_copy_mem(dst, src, cx * g_Bpp);
          src += srcwidth * g_Bpp;
        }
      }
    }
    else
    {
      if (g_Bpp == 1)
      {
        for (i = 0; i < cy; i++)
        {
          for (j = 0; j < cx; j++)
          {
            p = *(((unsigned char *) srcdata) +
                         ((i + srcy) * srcwidth + (j + srcx)));
            bs_set_pixel(x + j, y + i, p, opcode, 0);
          }
        }
      }
      else if (g_Bpp == 2)
      {
        for (i = 0; i < cy; i++)
        {
          for (j = 0; j < cx; j++)
          {
            p = *(((unsigned short *) srcdata) +
                         ((i + srcy) * srcwidth + (j + srcx)));
            bs_set_pixel(x + j, y + i, p, opcode, 0);
          }
        }
      }
      else
      {
        for (i = 0; i < cy; i++)
        {
          for (j = 0; j < cx; j++)
          {
            p = *(((unsigned int *) srcdata) +
                         ((i + srcy) * srcwidth + (j + srcx)));
            bs_set_pixel(x + j, y + i, p, opcode, 0);
          }
        }
      }
    }
  }
}
