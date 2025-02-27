
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {scalar_t__ bits_per_raw_sample; } ;
struct TYPE_5__ {int nb_samples; scalar_t__* sample_shift; int* lpc_mode; int nb_subframes; int* subframe_len; int subframe_scale; int ** decoded; int gb; TYPE_2__* avctx; } ;
typedef TYPE_1__ TAKDecContext ;
typedef int GetBitContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int decode_subframe (TYPE_1__*,int *,int,int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits_esc4 (int *) ;
 int get_bits_left (int *) ;
 int get_sbits (int *,scalar_t__) ;

__attribute__((used)) static int decode_channel(TAKDecContext *s, int chan)
{
    AVCodecContext *avctx = s->avctx;
    GetBitContext *gb = &s->gb;
    int32_t *decoded = s->decoded[chan];
    int left = s->nb_samples - 1;
    int i = 0, ret, prev = 0;

    s->sample_shift[chan] = get_bits_esc4(gb);
    if (s->sample_shift[chan] >= avctx->bits_per_raw_sample)
        return AVERROR_INVALIDDATA;

    *decoded++ = get_sbits(gb, avctx->bits_per_raw_sample - s->sample_shift[chan]);
    s->lpc_mode[chan] = get_bits(gb, 2);
    s->nb_subframes = get_bits(gb, 3) + 1;

    if (s->nb_subframes > 1) {
        if (get_bits_left(gb) < (s->nb_subframes - 1) * 6)
            return AVERROR_INVALIDDATA;

        for (; i < s->nb_subframes - 1; i++) {
            int v = get_bits(gb, 6);

            s->subframe_len[i] = (v - prev) * s->subframe_scale;
            if (s->subframe_len[i] <= 0)
                return AVERROR_INVALIDDATA;

            left -= s->subframe_len[i];
            prev = v;
        }

        if (left <= 0)
            return AVERROR_INVALIDDATA;
    }
    s->subframe_len[i] = left;

    prev = 0;
    for (i = 0; i < s->nb_subframes; i++) {
        if ((ret = decode_subframe(s, decoded, s->subframe_len[i], prev)) < 0)
            return ret;
        decoded += s->subframe_len[i];
        prev = s->subframe_len[i];
    }

    return 0;
}
