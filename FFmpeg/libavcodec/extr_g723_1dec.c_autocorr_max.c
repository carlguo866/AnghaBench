
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int FFMIN (int,int) ;
 int FRAME_LEN ;
 int PITCH_MAX ;
 int ff_g723_1_dot_product (int const*,int const*,int) ;

__attribute__((used)) static int autocorr_max(const int16_t *buf, int offset, int *ccr_max,
                        int pitch_lag, int length, int dir)
{
    int limit, ccr, lag = 0;
    int i;

    pitch_lag = FFMIN(PITCH_MAX - 3, pitch_lag);
    if (dir > 0)
        limit = FFMIN(FRAME_LEN + PITCH_MAX - offset - length, pitch_lag + 3);
    else
        limit = pitch_lag + 3;

    for (i = pitch_lag - 3; i <= limit; i++) {
        ccr = ff_g723_1_dot_product(buf, buf + dir * i, length);

        if (ccr > *ccr_max) {
            *ccr_max = ccr;
            lag = i;
        }
    }
    return lag;
}
