
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int integer ;
struct TYPE_4__ {int i; int r; } ;
typedef TYPE_1__ complex ;



int ccopy_(integer *n, complex *cx, integer *incx, complex *
 cy, integer *incy)
{

    integer i__1, i__2, i__3;


    static integer i__, ix, iy;
    --cy;
    --cx;


    if (*n <= 0) {
 return 0;
    }
    if (*incx == 1 && *incy == 1) {
 goto L20;
    }






    ix = 1;
    iy = 1;
    if (*incx < 0) {
 ix = (-(*n) + 1) * *incx + 1;
    }
    if (*incy < 0) {
 iy = (-(*n) + 1) * *incy + 1;
    }
    i__1 = *n;
    for (i__ = 1; i__ <= i__1; ++i__) {
 i__2 = iy;
 i__3 = ix;
 cy[i__2].r = cx[i__3].r, cy[i__2].i = cx[i__3].i;
 ix += *incx;
 iy += *incy;

    }
    return 0;



L20:
    i__1 = *n;
    for (i__ = 1; i__ <= i__1; ++i__) {
 i__2 = i__;
 i__3 = i__;
 cy[i__2].r = cx[i__3].r, cy[i__2].i = cx[i__3].i;

    }
    return 0;
}
