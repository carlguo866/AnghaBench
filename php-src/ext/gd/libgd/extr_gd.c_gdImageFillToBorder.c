
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_5__ {int colorsTotal; int alphaBlendingFlag; int sx; int sy; int trueColor; } ;


 int gdImageGetPixel (TYPE_1__*,int,int) ;
 int gdImageSetPixel (TYPE_1__*,int,int,int) ;

void gdImageFillToBorder (gdImagePtr im, int x, int y, int border, int color)
{
 int lastBorder;

 int leftLimit = -1, rightLimit;
 int i, restoreAlphaBlending = 0;

 if (border < 0 || color < 0) {

  return;
 }

 if (!im->trueColor) {
  if ((color > (im->colorsTotal - 1)) || (border > (im->colorsTotal - 1)) || (color < 0)) {
   return;
  }
 }

 restoreAlphaBlending = im->alphaBlendingFlag;
 im->alphaBlendingFlag = 0;

 if (x >= im->sx) {
  x = im->sx - 1;
 } else if (x < 0) {
  x = 0;
 }
 if (y >= im->sy) {
  y = im->sy - 1;
 } else if (y < 0) {
  y = 0;
 }

 for (i = x; i >= 0; i--) {
  if (gdImageGetPixel(im, i, y) == border) {
   break;
  }
  gdImageSetPixel(im, i, y, color);
  leftLimit = i;
 }
 if (leftLimit == -1) {
  im->alphaBlendingFlag = restoreAlphaBlending;
  return;
 }

 rightLimit = x;
 for (i = (x + 1); i < im->sx; i++) {
  if (gdImageGetPixel(im, i, y) == border) {
   break;
  }
  gdImageSetPixel(im, i, y, color);
  rightLimit = i;
 }


 if (y > 0) {
  lastBorder = 1;
  for (i = leftLimit; i <= rightLimit; i++) {
   int c = gdImageGetPixel(im, i, y - 1);
   if (lastBorder) {
    if ((c != border) && (c != color)) {
     gdImageFillToBorder(im, i, y - 1, border, color);
     lastBorder = 0;
    }
   } else if ((c == border) || (c == color)) {
    lastBorder = 1;
   }
  }
 }


 if (y < ((im->sy) - 1)) {
  lastBorder = 1;
  for (i = leftLimit; i <= rightLimit; i++) {
   int c = gdImageGetPixel(im, i, y + 1);

   if (lastBorder) {
    if ((c != border) && (c != color)) {
     gdImageFillToBorder(im, i, y + 1, border, color);
     lastBorder = 0;
    }
   } else if ((c == border) || (c == color)) {
    lastBorder = 1;
   }
  }
 }
 im->alphaBlendingFlag = restoreAlphaBlending;
}
