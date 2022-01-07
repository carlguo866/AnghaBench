
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROUNDED_DIV (int,int) ;
 int very_broken_op (int,int) ;

__attribute__((used)) static void add_peak(int period, int width, const float *shape,
                     float ppc_gain, float *speech, int len)
{
    int i, j;

    const float *shape_end = shape + len;
    int center;


    for (i = 0; i < width / 2; i++)
        speech[i] += ppc_gain * *shape++;

    for (i = 1; i < ROUNDED_DIV(len, width); i++) {
        center = very_broken_op(period, i);
        for (j = -width / 2; j < (width + 1) / 2; j++)
            speech[j + center] += ppc_gain * *shape++;
    }


    center = very_broken_op(period, i);
    for (j = -width / 2; j < (width + 1) / 2 && shape < shape_end; j++)
        speech[j + center] += ppc_gain * *shape++;
}
