
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* var_values; } ;
typedef TYPE_1__ RotContext ;


 double FFMAX (int ,double) ;
 size_t VAR_IN_H ;
 size_t VAR_IN_W ;
 float cos (double) ;
 float sin (double) ;

__attribute__((used)) static double get_rotated_w(void *opaque, double angle)
{
    RotContext *rot = opaque;
    double inw = rot->var_values[VAR_IN_W];
    double inh = rot->var_values[VAR_IN_H];
    float sinx = sin(angle);
    float cosx = cos(angle);

    return FFMAX(0, inh * sinx) + FFMAX(0, -inw * cosx) +
           FFMAX(0, inw * cosx) + FFMAX(0, -inh * sinx);
}
