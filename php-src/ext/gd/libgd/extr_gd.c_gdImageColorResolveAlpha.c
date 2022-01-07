
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int colorsTotal; int transparent; int* red; int* green; int* blue; int* alpha; scalar_t__* open; scalar_t__ trueColor; } ;


 int gdMaxColors ;
 int gdTrueColorAlpha (int,int,int,int) ;

int gdImageColorResolveAlpha (gdImagePtr im, int r, int g, int b, int a)
{
  int c;
  int ct = -1;
  int op = -1;
  long rd, gd, bd, ad, dist;
  long mindist = 4 * 255 * 255;
  if (im->trueColor)
    {
      return gdTrueColorAlpha (r, g, b, a);
    }

  for (c = 0; c < im->colorsTotal; c++)
    {
      if (im->open[c])
 {
   op = c;
   continue;
 }
      if (c == im->transparent)
        {


          continue;
 }
      rd = (long) (im->red[c] - r);
      gd = (long) (im->green[c] - g);
      bd = (long) (im->blue[c] - b);
      ad = (long) (im->alpha[c] - a);
      dist = rd * rd + gd * gd + bd * bd + ad * ad;
      if (dist < mindist)
 {
   if (dist == 0)
     {
       return c;
     }
   mindist = dist;
   ct = c;
 }
    }

  if (op == -1)
    {
      op = im->colorsTotal;
      if (op == gdMaxColors)
 {
   return ct;
 }
      im->colorsTotal++;
    }
  im->red[op] = r;
  im->green[op] = g;
  im->blue[op] = b;
  im->alpha[op] = a;
  im->open[op] = 0;
  return op;
}
