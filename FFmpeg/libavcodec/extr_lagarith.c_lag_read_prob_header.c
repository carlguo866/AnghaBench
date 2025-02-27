
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {unsigned int* prob; int scale; int avctx; } ;
typedef TYPE_1__ lag_rac ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ UINT_MAX ;
 int av_log (int ,int ,char*) ;
 int av_log2 (unsigned int) ;
 scalar_t__ lag_decode_prob (int *,unsigned int*) ;
 int show_bits_long (int *,int) ;
 void* softfloat_mul (scalar_t__,scalar_t__) ;
 scalar_t__ softfloat_reciprocal (unsigned int) ;

__attribute__((used)) static int lag_read_prob_header(lag_rac *rac, GetBitContext *gb)
{
    int i, j, scale_factor;
    unsigned prob, cumulative_target;
    unsigned cumul_prob = 0;
    unsigned scaled_cumul_prob = 0;
    int nnz = 0;

    rac->prob[0] = 0;
    rac->prob[257] = UINT_MAX;

    for (i = 1; i < 257; i++) {
        if (lag_decode_prob(gb, &rac->prob[i]) < 0) {
            av_log(rac->avctx, AV_LOG_ERROR, "Invalid probability encountered.\n");
            return -1;
        }
        if ((uint64_t)cumul_prob + rac->prob[i] > UINT_MAX) {
            av_log(rac->avctx, AV_LOG_ERROR, "Integer overflow encountered in cumulative probability calculation.\n");
            return -1;
        }
        cumul_prob += rac->prob[i];
        if (!rac->prob[i]) {
            if (lag_decode_prob(gb, &prob)) {
                av_log(rac->avctx, AV_LOG_ERROR, "Invalid probability run encountered.\n");
                return -1;
            }
            if (prob > 256 - i)
                prob = 256 - i;
            for (j = 0; j < prob; j++)
                rac->prob[++i] = 0;
        }else {
            nnz++;
        }
    }

    if (!cumul_prob) {
        av_log(rac->avctx, AV_LOG_ERROR, "All probabilities are 0!\n");
        return -1;
    }

    if (nnz == 1 && (show_bits_long(gb, 32) & 0xFFFFFF)) {
        return AVERROR_INVALIDDATA;
    }


    scale_factor = av_log2(cumul_prob);

    if (cumul_prob & (cumul_prob - 1)) {
        uint64_t mul = softfloat_reciprocal(cumul_prob);
        for (i = 1; i <= 128; i++) {
            rac->prob[i] = softfloat_mul(rac->prob[i], mul);
            scaled_cumul_prob += rac->prob[i];
        }
        if (scaled_cumul_prob <= 0) {
            av_log(rac->avctx, AV_LOG_ERROR, "Scaled probabilities invalid\n");
            return AVERROR_INVALIDDATA;
        }
        for (; i < 257; i++) {
            rac->prob[i] = softfloat_mul(rac->prob[i], mul);
            scaled_cumul_prob += rac->prob[i];
        }

        scale_factor++;
        if (scale_factor >= 32U)
            return AVERROR_INVALIDDATA;
        cumulative_target = 1U << scale_factor;

        if (scaled_cumul_prob > cumulative_target) {
            av_log(rac->avctx, AV_LOG_ERROR,
                   "Scaled probabilities are larger than target!\n");
            return -1;
        }

        scaled_cumul_prob = cumulative_target - scaled_cumul_prob;

        for (i = 1; scaled_cumul_prob; i = (i & 0x7f) + 1) {
            if (rac->prob[i]) {
                rac->prob[i]++;
                scaled_cumul_prob--;
            }
        }
    }

    rac->scale = scale_factor;


    for (i = 1; i < 257; i++)
        rac->prob[i] += rac->prob[i - 1];

    return 0;
}
