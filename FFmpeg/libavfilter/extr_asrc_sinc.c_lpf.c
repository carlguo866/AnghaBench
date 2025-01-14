
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_clip (int,int,int) ;
 int kaiser_params (float,float,float,float*,int*) ;
 float* make_lpf (int,float,float,float,float,int ) ;

__attribute__((used)) static float *lpf(float Fn, float Fc, float tbw, int *num_taps, float att, float *beta, int round)
{
    int n = *num_taps;

    if ((Fc /= Fn) <= 0.f || Fc >= 1.f) {
        *num_taps = 0;
        return ((void*)0);
    }

    att = att ? att : 120.f;

    kaiser_params(att, Fc, (tbw ? tbw / Fn : .05f) * .5f, beta, num_taps);

    if (!n) {
        n = *num_taps;
        *num_taps = av_clip(n, 11, 32767);
        if (round)
            *num_taps = 1 + 2 * (int)((int)((*num_taps / 2) * Fc + .5f) / Fc + .5f);
    }

    return make_lpf(*num_taps |= 1, Fc, *beta, 0.f, 1.f, 0);
}
