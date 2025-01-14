
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int int32_sent_bits; int int32_zeros; int int32_ones; int int32_dups; int flags; int pb; } ;
typedef TYPE_1__ WavPackEncodeContext ;
typedef int PutBitContext ;


 int WV_MONO_DATA ;
 int put_sbits (int *,int const,int) ;

__attribute__((used)) static void pack_int32(WavPackEncodeContext *s,
                       int32_t *samples_l, int32_t *samples_r,
                       int nb_samples)
{
    const int sent_bits = s->int32_sent_bits;
    PutBitContext *pb = &s->pb;
    int i, pre_shift;

    pre_shift = s->int32_zeros + s->int32_ones + s->int32_dups;

    if (!sent_bits)
        return;

    if (s->flags & WV_MONO_DATA) {
        for (i = 0; i < nb_samples; i++) {
            put_sbits(pb, sent_bits, samples_l[i] >> pre_shift);
        }
    } else {
        for (i = 0; i < nb_samples; i++) {
            put_sbits(pb, sent_bits, samples_l[i] >> pre_shift);
            put_sbits(pb, sent_bits, samples_r[i] >> pre_shift);
        }
    }
}
