
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int u8 ;
typedef int u32 ;
struct fb_info {scalar_t__ screen_base; } ;


 int BPL ;
 int memmove32_col (int *,int *,int,int,int) ;

void atafb_iplan2p8_copyarea(struct fb_info *info, u_long next_line,
        int sy, int sx, int dy, int dx,
        int height, int width)
{
 u8 *src, *dst;
 u32 *s, *d;
 int w, l , i, j;
 u_int colsize;
 u_int upwards = (dy < sy) || (dy == sy && dx < sx);

 colsize = height;
 if (!((sx ^ dx) & 15)) {


  if (upwards) {
   src = (u8 *)info->screen_base + sy * next_line + (sx & ~15) / (8 / BPL);
   dst = (u8 *)info->screen_base + dy * next_line + (dx & ~15) / (8 / BPL);
   if (sx & 15) {
    memmove32_col(dst, src, 0xff00ff, height, next_line - BPL * 2);
    src += BPL * 2;
    dst += BPL * 2;
    width -= 8;
   }
   w = width >> 4;
   if (w) {
    s = (u32 *)src;
    d = (u32 *)dst;
    w *= BPL / 2;
    l = next_line - w * 4;
    for (j = height; j > 0; j--) {
     for (i = w; i > 0; i--)
      *d++ = *s++;
     s = (u32 *)((u8 *)s + l);
     d = (u32 *)((u8 *)d + l);
    }
   }
   if (width & 15)
    memmove32_col(dst + width / (8 / BPL), src + width / (8 / BPL),
           0xff00ff00, height, next_line - BPL * 2);
  } else {
   src = (u8 *)info->screen_base + (sy - 1) * next_line + ((sx + width + 8) & ~15) / (8 / BPL);
   dst = (u8 *)info->screen_base + (dy - 1) * next_line + ((dx + width + 8) & ~15) / (8 / BPL);

   if ((sx + width) & 15) {
    src -= BPL * 2;
    dst -= BPL * 2;
    memmove32_col(dst, src, 0xff00ff00, colsize, -next_line - BPL * 2);
    width -= 8;
   }
   w = width >> 4;
   if (w) {
    s = (u32 *)src;
    d = (u32 *)dst;
    w *= BPL / 2;
    l = next_line - w * 4;
    for (j = height; j > 0; j--) {
     for (i = w; i > 0; i--)
      *--d = *--s;
     s = (u32 *)((u8 *)s - l);
     d = (u32 *)((u8 *)d - l);
    }
   }
   if (sx & 15)
    memmove32_col(dst - (width - 16) / (8 / BPL),
           src - (width - 16) / (8 / BPL),
           0xff00ff, colsize, -next_line - BPL * 2);
  }
 } else {

  if (upwards) {
   u32 *src32, *dst32;
   u32 pval[4], v, v1, mask;
   int i, j, w, f;

   src = (u8 *)info->screen_base + sy * next_line + (sx & ~15) / (8 / BPL);
   dst = (u8 *)info->screen_base + dy * next_line + (dx & ~15) / (8 / BPL);

   mask = 0xff00ff00;
   f = 0;
   w = width;
   if (sx & 15) {
    f = 1;
    w += 8;
   }
   if ((sx + width) & 15)
    f |= 2;
   w >>= 4;
   for (i = height; i; i--) {
    src32 = (u32 *)src;
    dst32 = (u32 *)dst;

    if (f & 1) {
     pval[0] = (*src32++ << 8) & mask;
     pval[1] = (*src32++ << 8) & mask;
     pval[2] = (*src32++ << 8) & mask;
     pval[3] = (*src32++ << 8) & mask;
    } else {
     pval[0] = dst32[0] & mask;
     pval[1] = dst32[1] & mask;
     pval[2] = dst32[2] & mask;
     pval[3] = dst32[3] & mask;
    }

    for (j = w; j > 0; j--) {
     v = *src32++;
     v1 = v & mask;
     *dst32++ = pval[0] | (v1 >> 8);
     pval[0] = (v ^ v1) << 8;
     v = *src32++;
     v1 = v & mask;
     *dst32++ = pval[1] | (v1 >> 8);
     pval[1] = (v ^ v1) << 8;
     v = *src32++;
     v1 = v & mask;
     *dst32++ = pval[2] | (v1 >> 8);
     pval[2] = (v ^ v1) << 8;
     v = *src32++;
     v1 = v & mask;
     *dst32++ = pval[3] | (v1 >> 8);
     pval[3] = (v ^ v1) << 8;
    }

    if (f & 2) {
     dst32[0] = (dst32[0] & mask) | pval[0];
     dst32[1] = (dst32[1] & mask) | pval[1];
     dst32[2] = (dst32[2] & mask) | pval[2];
     dst32[3] = (dst32[3] & mask) | pval[3];
    }

    src += next_line;
    dst += next_line;
   }
  } else {
   u32 *src32, *dst32;
   u32 pval[4], v, v1, mask;
   int i, j, w, f;

   src = (u8 *)info->screen_base + (sy - 1) * next_line + ((sx + width + 8) & ~15) / (8 / BPL);
   dst = (u8 *)info->screen_base + (dy - 1) * next_line + ((dx + width + 8) & ~15) / (8 / BPL);

   mask = 0xff00ff;
   f = 0;
   w = width;
   if ((dx + width) & 15)
    f = 1;
   if (sx & 15) {
    f |= 2;
    w += 8;
   }
   w >>= 4;
   for (i = height; i; i--) {
    src32 = (u32 *)src;
    dst32 = (u32 *)dst;

    if (f & 1) {
     pval[0] = dst32[-1] & mask;
     pval[1] = dst32[-2] & mask;
     pval[2] = dst32[-3] & mask;
     pval[3] = dst32[-4] & mask;
    } else {
     pval[0] = (*--src32 >> 8) & mask;
     pval[1] = (*--src32 >> 8) & mask;
     pval[2] = (*--src32 >> 8) & mask;
     pval[3] = (*--src32 >> 8) & mask;
    }

    for (j = w; j > 0; j--) {
     v = *--src32;
     v1 = v & mask;
     *--dst32 = pval[0] | (v1 << 8);
     pval[0] = (v ^ v1) >> 8;
     v = *--src32;
     v1 = v & mask;
     *--dst32 = pval[1] | (v1 << 8);
     pval[1] = (v ^ v1) >> 8;
     v = *--src32;
     v1 = v & mask;
     *--dst32 = pval[2] | (v1 << 8);
     pval[2] = (v ^ v1) >> 8;
     v = *--src32;
     v1 = v & mask;
     *--dst32 = pval[3] | (v1 << 8);
     pval[3] = (v ^ v1) >> 8;
    }

    if (!(f & 2)) {
     dst32[-1] = (dst32[-1] & mask) | pval[0];
     dst32[-2] = (dst32[-2] & mask) | pval[1];
     dst32[-3] = (dst32[-3] & mask) | pval[2];
     dst32[-4] = (dst32[-4] & mask) | pval[3];
    }

    src -= next_line;
    dst -= next_line;
   }
  }
 }
}
