
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ mode; int mode_ext; int nb_channels; int*** sb_samples; int gb; } ;
typedef TYPE_1__ MPADecodeContext ;


 scalar_t__ MPA_JSTEREO ;
 int MPA_MAX_CHANNELS ;
 int SBLIMIT ;
 int get_bits (int *,int) ;
 int l1_unscale (int,int,int) ;

__attribute__((used)) static int mp_decode_layer1(MPADecodeContext *s)
{
    int bound, i, v, n, ch, j, mant;
    uint8_t allocation[MPA_MAX_CHANNELS][SBLIMIT];
    uint8_t scale_factors[MPA_MAX_CHANNELS][SBLIMIT];

    if (s->mode == MPA_JSTEREO)
        bound = (s->mode_ext + 1) * 4;
    else
        bound = SBLIMIT;


    for (i = 0; i < bound; i++) {
        for (ch = 0; ch < s->nb_channels; ch++) {
            allocation[ch][i] = get_bits(&s->gb, 4);
        }
    }
    for (i = bound; i < SBLIMIT; i++)
        allocation[0][i] = get_bits(&s->gb, 4);


    for (i = 0; i < bound; i++) {
        for (ch = 0; ch < s->nb_channels; ch++) {
            if (allocation[ch][i])
                scale_factors[ch][i] = get_bits(&s->gb, 6);
        }
    }
    for (i = bound; i < SBLIMIT; i++) {
        if (allocation[0][i]) {
            scale_factors[0][i] = get_bits(&s->gb, 6);
            scale_factors[1][i] = get_bits(&s->gb, 6);
        }
    }


    for (j = 0; j < 12; j++) {
        for (i = 0; i < bound; i++) {
            for (ch = 0; ch < s->nb_channels; ch++) {
                n = allocation[ch][i];
                if (n) {
                    mant = get_bits(&s->gb, n + 1);
                    v = l1_unscale(n, mant, scale_factors[ch][i]);
                } else {
                    v = 0;
                }
                s->sb_samples[ch][j][i] = v;
            }
        }
        for (i = bound; i < SBLIMIT; i++) {
            n = allocation[0][i];
            if (n) {
                mant = get_bits(&s->gb, n + 1);
                v = l1_unscale(n, mant, scale_factors[0][i]);
                s->sb_samples[0][j][i] = v;
                v = l1_unscale(n, mant, scale_factors[1][i]);
                s->sb_samples[1][j][i] = v;
            } else {
                s->sb_samples[0][j][i] = 0;
                s->sb_samples[1][j][i] = 0;
            }
        }
    }
    return 12;
}
