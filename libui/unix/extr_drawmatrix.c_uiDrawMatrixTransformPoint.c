
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawMatrix ;
typedef int cairo_matrix_t ;


 int cairo_matrix_transform_point (int *,double*,double*) ;
 int m2c (int *,int *) ;

void uiDrawMatrixTransformPoint(uiDrawMatrix *m, double *x, double *y)
{
 cairo_matrix_t c;

 m2c(m, &c);
 cairo_matrix_transform_point(&c, x, y);
}
