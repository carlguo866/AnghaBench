
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLushort ;
typedef int GLint ;


 int floor (float) ;
 int halveImage (int,int,int,float const*,float*) ;

__attribute__((used)) static void scale_internal(GLint components, GLint widthin, GLint heightin,
      const GLushort *datain,
      GLint widthout, GLint heightout,
      GLushort *dataout)
{
    float x, lowx, highx, convx, halfconvx;
    float y, lowy, highy, convy, halfconvy;
    float xpercent,ypercent;
    float percent;

    float totals[4];
    float area;
    int i,j,k,yint,xint,xindex,yindex;
    int temp;

    if (widthin == widthout*2 && heightin == heightout*2) {
 halveImage(components, widthin, heightin, datain, dataout);
 return;
    }
    convy = (float) heightin/heightout;
    convx = (float) widthin/widthout;
    halfconvx = convx/2;
    halfconvy = convy/2;
    for (i = 0; i < heightout; i++) {
 y = convy * (i+0.5);
 if (heightin > heightout) {
     highy = y + halfconvy;
     lowy = y - halfconvy;
 } else {
     highy = y + 0.5;
     lowy = y - 0.5;
 }
 for (j = 0; j < widthout; j++) {
     x = convx * (j+0.5);
     if (widthin > widthout) {
  highx = x + halfconvx;
  lowx = x - halfconvx;
     } else {
  highx = x + 0.5;
  lowx = x - 0.5;
     }






     totals[0] = totals[1] = totals[2] = totals[3] = 0.0;
     area = 0.0;

     y = lowy;
     yint = floor(y);
     while (y < highy) {
  yindex = (yint + heightin) % heightin;
  if (highy < yint+1) {
      ypercent = highy - y;
  } else {
      ypercent = yint+1 - y;
  }

  x = lowx;
  xint = floor(x);

  while (x < highx) {
      xindex = (xint + widthin) % widthin;
      if (highx < xint+1) {
   xpercent = highx - x;
      } else {
   xpercent = xint+1 - x;
      }

      percent = xpercent * ypercent;
      area += percent;
      temp = (xindex + (yindex * widthin)) * components;
      for (k = 0; k < components; k++) {
   totals[k] += datain[temp + k] * percent;
      }

      xint++;
      x = xint;
  }
  yint++;
  y = yint;
     }

     temp = (j + (i * widthout)) * components;
     for (k = 0; k < components; k++) {



  dataout[temp + k] = (totals[k]+0.5)/area;
     }
 }
    }
}
