
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int subframe_len; int esc_len; int gb; int avctx; scalar_t__ transmit_num_vec_coeffs; TYPE_2__* channel; } ;
typedef TYPE_1__ WMAProDecodeCtx ;
struct TYPE_8__ {int num_vec_coeffs; scalar_t__* coeffs; } ;
typedef TYPE_2__ WMAProChannelCtx ;
typedef int VLC ;
struct TYPE_11__ {int table; } ;
struct TYPE_10__ {int table; } ;
struct TYPE_9__ {int table; } ;


 int AVERROR_INVALIDDATA ;
 int AV_WN32A (scalar_t__*,int) ;
 int HUFF_VEC1_SIZE ;
 int HUFF_VEC2_SIZE ;
 int HUFF_VEC4_SIZE ;
 int VEC1MAXDEPTH ;
 int VEC2MAXDEPTH ;
 int VEC4MAXDEPTH ;
 int VLCBITS ;
 int av_float2int (int) ;
 float* coef0_level ;
 int * coef0_run ;
 float* coef1_level ;
 int * coef1_run ;
 int * coef_vlc ;
 int ff_dlog (int ,char*,int) ;
 scalar_t__ ff_wma_get_large_val (int *) ;
 scalar_t__ ff_wma_run_level_decode (int ,int *,int *,float const*,int const*,int,scalar_t__*,int,int,int,int ,int ) ;
 int get_bits1 (int *) ;
 void* get_vlc2 (int *,int ,int ,int ) ;
 int memset (scalar_t__*,int ,int) ;
 int* symbol_to_vec2 ;
 int* symbol_to_vec4 ;
 TYPE_5__ vec1_vlc ;
 TYPE_4__ vec2_vlc ;
 TYPE_3__ vec4_vlc ;

__attribute__((used)) static int decode_coeffs(WMAProDecodeCtx *s, int c)
{



    static const uint32_t fval_tab[16] = {
        0x00000000, 0x3f800000, 0x40000000, 0x40400000,
        0x40800000, 0x40a00000, 0x40c00000, 0x40e00000,
        0x41000000, 0x41100000, 0x41200000, 0x41300000,
        0x41400000, 0x41500000, 0x41600000, 0x41700000,
    };
    int vlctable;
    VLC* vlc;
    WMAProChannelCtx* ci = &s->channel[c];
    int rl_mode = 0;
    int cur_coeff = 0;
    int num_zeros = 0;
    const uint16_t* run;
    const float* level;

    ff_dlog(s->avctx, "decode coefficients for channel %i\n", c);

    vlctable = get_bits1(&s->gb);
    vlc = &coef_vlc[vlctable];

    if (vlctable) {
        run = coef1_run;
        level = coef1_level;
    } else {
        run = coef0_run;
        level = coef0_level;
    }



    while ((s->transmit_num_vec_coeffs || !rl_mode) &&
           (cur_coeff + 3 < ci->num_vec_coeffs)) {
        uint32_t vals[4];
        int i;
        unsigned int idx;

        idx = get_vlc2(&s->gb, vec4_vlc.table, VLCBITS, VEC4MAXDEPTH);

        if (idx == HUFF_VEC4_SIZE - 1) {
            for (i = 0; i < 4; i += 2) {
                idx = get_vlc2(&s->gb, vec2_vlc.table, VLCBITS, VEC2MAXDEPTH);
                if (idx == HUFF_VEC2_SIZE - 1) {
                    uint32_t v0, v1;
                    v0 = get_vlc2(&s->gb, vec1_vlc.table, VLCBITS, VEC1MAXDEPTH);
                    if (v0 == HUFF_VEC1_SIZE - 1)
                        v0 += ff_wma_get_large_val(&s->gb);
                    v1 = get_vlc2(&s->gb, vec1_vlc.table, VLCBITS, VEC1MAXDEPTH);
                    if (v1 == HUFF_VEC1_SIZE - 1)
                        v1 += ff_wma_get_large_val(&s->gb);
                    vals[i ] = av_float2int(v0);
                    vals[i+1] = av_float2int(v1);
                } else {
                    vals[i] = fval_tab[symbol_to_vec2[idx] >> 4 ];
                    vals[i+1] = fval_tab[symbol_to_vec2[idx] & 0xF];
                }
            }
        } else {
            vals[0] = fval_tab[ symbol_to_vec4[idx] >> 12 ];
            vals[1] = fval_tab[(symbol_to_vec4[idx] >> 8) & 0xF];
            vals[2] = fval_tab[(symbol_to_vec4[idx] >> 4) & 0xF];
            vals[3] = fval_tab[ symbol_to_vec4[idx] & 0xF];
        }


        for (i = 0; i < 4; i++) {
            if (vals[i]) {
                uint32_t sign = get_bits1(&s->gb) - 1;
                AV_WN32A(&ci->coeffs[cur_coeff], vals[i] ^ sign << 31);
                num_zeros = 0;
            } else {
                ci->coeffs[cur_coeff] = 0;


                rl_mode |= (++num_zeros > s->subframe_len >> 8);
            }
            ++cur_coeff;
        }
    }


    if (cur_coeff < s->subframe_len) {
        memset(&ci->coeffs[cur_coeff], 0,
               sizeof(*ci->coeffs) * (s->subframe_len - cur_coeff));
        if (ff_wma_run_level_decode(s->avctx, &s->gb, vlc,
                                    level, run, 1, ci->coeffs,
                                    cur_coeff, s->subframe_len,
                                    s->subframe_len, s->esc_len, 0))
            return AVERROR_INVALIDDATA;
    }

    return 0;
}
