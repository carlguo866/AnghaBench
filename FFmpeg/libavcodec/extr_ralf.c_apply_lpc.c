
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** channel_data; int filter_bits; int filter_length; scalar_t__* filter; } ;
typedef TYPE_1__ RALFContext ;


 int FFMAX (int,int) ;
 int FFMIN (int,int) ;

__attribute__((used)) static void apply_lpc(RALFContext *ctx, int ch, int length, int bits)
{
    int i, j, acc;
    int *audio = ctx->channel_data[ch];
    int bias = 1 << (ctx->filter_bits - 1);
    int max_clip = (1 << bits) - 1, min_clip = -max_clip - 1;

    for (i = 1; i < length; i++) {
        int flen = FFMIN(ctx->filter_length, i);

        acc = 0;
        for (j = 0; j < flen; j++)
            acc += (unsigned)ctx->filter[j] * audio[i - j - 1];
        if (acc < 0) {
            acc = (acc + bias - 1) >> ctx->filter_bits;
            acc = FFMAX(acc, min_clip);
        } else {
            acc = (acc + bias) >> ctx->filter_bits;
            acc = FFMIN(acc, max_clip);
        }
        audio[i] += acc;
    }
}
