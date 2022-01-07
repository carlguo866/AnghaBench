
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* gdPointPtr ;
typedef TYPE_2__* gdImagePtr ;
struct TYPE_10__ {int AA_color; int polyAllocated; int* polyInts; } ;
struct TYPE_9__ {int y; int x; } ;


 int gdAntiAliased ;
 int gdCompareInt ;
 int gdImageLine (TYPE_2__*,int,int,int,int,int) ;
 int gdImagePolygon (TYPE_2__*,TYPE_1__*,int,int) ;
 int gdImageSY (TYPE_2__*) ;
 scalar_t__ gdMalloc (int) ;
 scalar_t__ gdRealloc (int*,int) ;
 scalar_t__ overflow2 (int,int) ;
 int qsort (int*,int,int,int ) ;

void gdImageFilledPolygon (gdImagePtr im, gdPointPtr p, int n, int c)
{
 int i;
 int y;
 int miny, maxy, pmaxy;
 int x1, y1;
 int x2, y2;
 int ind1, ind2;
 int ints;
 int fill_color;

 if (n <= 0) {
  return;
 }

 if (overflow2(sizeof(int), n)) {
  return;
 }

 if (c == gdAntiAliased) {
  fill_color = im->AA_color;
 } else {
  fill_color = c;
 }

 if (!im->polyAllocated) {
  im->polyInts = (int *) gdMalloc(sizeof(int) * n);
  im->polyAllocated = n;
 }
 if (im->polyAllocated < n) {
  while (im->polyAllocated < n) {
   im->polyAllocated *= 2;
  }
  if (overflow2(sizeof(int), im->polyAllocated)) {
   return;
  }
  im->polyInts = (int *) gdRealloc(im->polyInts, sizeof(int) * im->polyAllocated);
 }
 miny = p[0].y;
 maxy = p[0].y;
 for (i = 1; i < n; i++) {
  if (p[i].y < miny) {
   miny = p[i].y;
  }
  if (p[i].y > maxy) {
   maxy = p[i].y;
  }
 }

 if (n > 1 && miny == maxy) {
  x1 = x2 = p[0].x;
  for (i = 1; (i < n); i++) {
   if (p[i].x < x1) {
    x1 = p[i].x;
   } else if (p[i].x > x2) {
    x2 = p[i].x;
   }
  }
  gdImageLine(im, x1, miny, x2, miny, c);
  return;
 }
 pmaxy = maxy;

 if (miny < 0) {
  miny = 0;
 }
 if (maxy >= gdImageSY(im)) {
  maxy = gdImageSY(im) - 1;
 }


 for (y = miny; y <= maxy; y++) {



  ints = 0;
  for (i = 0; i < n; i++) {
   if (!i) {
    ind1 = n - 1;
    ind2 = 0;
   } else {
    ind1 = i - 1;
    ind2 = i;
   }
   y1 = p[ind1].y;
   y2 = p[ind2].y;
   if (y1 < y2) {
    x1 = p[ind1].x;
    x2 = p[ind2].x;
   } else if (y1 > y2) {
    y2 = p[ind1].y;
    y1 = p[ind2].y;
    x2 = p[ind1].x;
    x1 = p[ind2].x;
   } else {
    continue;
   }




   if (y >= y1 && y < y2) {
    im->polyInts[ints++] = (float) ((y - y1) * (x2 - x1)) / (float) (y2 - y1) + 0.5 + x1;
   } else if (y == pmaxy && y == y2) {
    im->polyInts[ints++] = x2;
   }
  }
  qsort(im->polyInts, ints, sizeof(int), gdCompareInt);

  for (i = 0; i < ints - 1; i += 2) {
   gdImageLine(im, im->polyInts[i], y, im->polyInts[i + 1], y, fill_color);
  }
 }


 if (c == gdAntiAliased) {
  gdImagePolygon(im, p, n, c);
 }
}
