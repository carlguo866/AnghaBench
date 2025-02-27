
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int VGLBitmap ;


 int set2lines (int *,int,int,int,int,int ) ;

void
VGLFilledEllipse(VGLBitmap *object, int xc, int yc, int a, int b, u_long color)
{
  int x = 0, y = b, asq = a*a, asq2 = a*a*2, bsq = b*b;
  int bsq2 = b*b*2, d = bsq-asq*b+asq/4, dx = 0, dy = asq2*b;

  while (dx<dy) {
    set2lines(object, x, y, xc, yc, color);
    if (d>0) {
      y--; dy-=asq2; d-=dy;
    }
    x++; dx+=bsq2; d+=bsq+dx;
  }
  d+=(3*(asq-bsq)/2-(dx+dy))/2;
  while (y>=0) {
    set2lines(object, x, y, xc, yc, color);
    if (d<0) {
      x++; dx+=bsq2; d+=dx;
    }
    y--; dy-=asq2; d+=asq-dy;
  }
}
