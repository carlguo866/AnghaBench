
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_8__ {int trueColor; } ;


 double floor_cast (double) ;
 double floorf (double) ;
 double gdAlphaMax ;
 int gdImageCopyResized (TYPE_1__*,TYPE_1__*,int,int,int,int,int,int,int,int) ;
 int gdImageGetTrueColorPixel (TYPE_1__*,int,int) ;
 int gdImageSetPixel (TYPE_1__*,int,int,int ) ;
 int gdTrueColorAlpha (int,int,int,int) ;
 double gdTrueColorGetAlpha (int) ;
 double gdTrueColorGetBlue (int) ;
 double gdTrueColorGetGreen (int) ;
 double gdTrueColorGetRed (int) ;

void gdImageCopyResampled (gdImagePtr dst, gdImagePtr src, int dstX, int dstY, int srcX, int srcY, int dstW, int dstH, int srcW, int srcH)
{
 int x, y;
 double sy1, sy2, sx1, sx2;

 if (!dst->trueColor) {
  gdImageCopyResized (dst, src, dstX, dstY, srcX, srcY, dstW, dstH, srcW, srcH);
  return;
 }
 for (y = dstY; (y < dstY + dstH); y++) {
  sy1 = ((double) y - (double) dstY) * (double) srcH / (double) dstH;
  sy2 = ((double) (y + 1) - (double) dstY) * (double) srcH / (double) dstH;
  for (x = dstX; (x < dstX + dstW); x++) {
   double sx, sy;
   double spixels = 0;
   double red = 0.0, green = 0.0, blue = 0.0, alpha = 0.0;
   double alpha_factor, alpha_sum = 0.0, contrib_sum = 0.0;
   sx1 = ((double) x - (double) dstX) * (double) srcW / dstW;
   sx2 = ((double) (x + 1) - (double) dstX) * (double) srcW / dstW;
   sy = sy1;
   do {
    double yportion;
    if (floor_cast(sy) == floor_cast(sy1)) {
     yportion = 1.0f - (sy - floor_cast(sy));
     if (yportion > sy2 - sy1) {
      yportion = sy2 - sy1;
     }
     sy = floor_cast(sy);
    } else if (sy == floorf(sy2)) {
     yportion = sy2 - floor_cast(sy2);
    } else {
     yportion = 1.0f;
    }
    sx = sx1;
    do {
     double xportion;
     double pcontribution;
     int p;
     if (floorf(sx) == floor_cast(sx1)) {
      xportion = 1.0f - (sx - floor_cast(sx));
      if (xportion > sx2 - sx1) {
       xportion = sx2 - sx1;
      }
      sx = floor_cast(sx);
     } else if (sx == floorf(sx2)) {
      xportion = sx2 - floor_cast(sx2);
     } else {
      xportion = 1.0f;
     }
     pcontribution = xportion * yportion;
     p = gdImageGetTrueColorPixel(src, (int) sx + srcX, (int) sy + srcY);

     alpha_factor = ((gdAlphaMax - gdTrueColorGetAlpha(p))) * pcontribution;
     red += gdTrueColorGetRed (p) * alpha_factor;
     green += gdTrueColorGetGreen (p) * alpha_factor;
     blue += gdTrueColorGetBlue (p) * alpha_factor;
     alpha += gdTrueColorGetAlpha (p) * pcontribution;
     alpha_sum += alpha_factor;
     contrib_sum += pcontribution;
     spixels += xportion * yportion;
     sx += 1.0f;
    }
    while (sx < sx2);

    sy += 1.0f;
   }

   while (sy < sy2);

   if (spixels != 0.0f) {
    red /= spixels;
    green /= spixels;
    blue /= spixels;
    alpha /= spixels;
    alpha += 0.5;
   }
   if ( alpha_sum != 0.0f) {
    if( contrib_sum != 0.0f) {
     alpha_sum /= contrib_sum;
    }
    red /= alpha_sum;
    green /= alpha_sum;
    blue /= alpha_sum;
   }

   if (red > 255.0f) {
    red = 255.0f;
   }
   if (green > 255.0f) {
    green = 255.0f;
   }
   if (blue > 255.0f) {
    blue = 255.0f;
   }
   if (alpha > gdAlphaMax) {
    alpha = gdAlphaMax;
   }
   gdImageSetPixel(dst, x, y, gdTrueColorAlpha ((int) red, (int) green, (int) blue, (int) alpha));
  }
 }
}
