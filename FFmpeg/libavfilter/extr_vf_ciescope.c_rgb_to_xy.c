
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
rgb_to_xy(double rc,
          double gc,
          double bc,
          double * const x,
          double * const y,
          double * const z,
          const double m[3][3])
{
    double sum;

    *x = m[0][0] * rc + m[0][1] * gc + m[0][2] * bc;
    *y = m[1][0] * rc + m[1][1] * gc + m[1][2] * bc;
    *z = m[2][0] * rc + m[2][1] * gc + m[2][2] * bc;

    sum = *x + *y + *z;

    *x = *x / sum;
    *y = *y / sum;
}
