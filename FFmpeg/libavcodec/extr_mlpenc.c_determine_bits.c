
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_21__ {scalar_t__ min; scalar_t__ max; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_20__ {TYPE_1__* filter_params; } ;
struct TYPE_19__ {int blocksize; scalar_t__* quant_step_size; } ;
struct TYPE_18__ {TYPE_6__** cur_best_offset; int num_channels; scalar_t__* sample_buffer; TYPE_5__* cur_channel_params; TYPE_2__* cur_restart_header; TYPE_4__* cur_decoding_params; } ;
struct TYPE_17__ {unsigned int max_channel; } ;
struct TYPE_16__ {int order; } ;
typedef TYPE_2__ RestartHeader ;
typedef TYPE_3__ MLPEncodeContext ;
typedef TYPE_4__ DecodingParams ;
typedef TYPE_5__ ChannelParams ;
typedef TYPE_6__ BestOffset ;


 size_t FIR ;
 int HUFF_OFFSET_MAX ;
 int HUFF_OFFSET_MIN ;
 scalar_t__ INT32_MAX ;
 scalar_t__ INT32_MIN ;
 int INT_MAX ;
 int NUM_CODEBOOKS ;
 int av_clip (int,int ,int ) ;
 int codebook_bits (TYPE_3__*,unsigned int,int,scalar_t__,scalar_t__,scalar_t__,TYPE_6__*,int) ;
 int codebook_bits_offset (TYPE_3__*,unsigned int,int,scalar_t__,scalar_t__,int,TYPE_6__*) ;
 int no_codebook_bits (TYPE_3__*,unsigned int,scalar_t__,scalar_t__,TYPE_6__*) ;
 int no_codebook_bits_offset (TYPE_3__*,unsigned int,int,scalar_t__,scalar_t__,TYPE_6__*) ;

__attribute__((used)) static void determine_bits(MLPEncodeContext *ctx)
{
    DecodingParams *dp = ctx->cur_decoding_params;
    RestartHeader *rh = ctx->cur_restart_header;
    unsigned int channel;

    for (channel = 0; channel <= rh->max_channel; channel++) {
        ChannelParams *cp = &ctx->cur_channel_params[channel];
        int32_t *sample_buffer = ctx->sample_buffer + channel;
        int32_t min = INT32_MAX, max = INT32_MIN;
        int no_filters_used = !cp->filter_params[FIR].order;
        int average = 0;
        int offset = 0;
        int i;


        for (i = 0; i < dp->blocksize; i++) {
            int32_t sample = *sample_buffer >> dp->quant_step_size[channel];
            if (sample < min)
                min = sample;
            if (sample > max)
                max = sample;
            average += sample;
            sample_buffer += ctx->num_channels;
        }
        average /= dp->blocksize;



        if (no_filters_used) {
            no_codebook_bits(ctx, channel, min, max, &ctx->cur_best_offset[channel][0]);
            offset = av_clip(average, HUFF_OFFSET_MIN, HUFF_OFFSET_MAX);
        } else {
            no_codebook_bits_offset(ctx, channel, offset, min, max, &ctx->cur_best_offset[channel][0]);
        }

        for (i = 1; i < NUM_CODEBOOKS; i++) {
            BestOffset temp_bo = { 0, INT_MAX, 0, 0, 0, };
            int16_t offset_max;

            codebook_bits_offset(ctx, channel, i - 1,
                                 min, max, offset,
                                 &temp_bo);

            if (no_filters_used) {
                offset_max = temp_bo.max;

                codebook_bits(ctx, channel, i - 1, temp_bo.min - 1,
                            min, max, &temp_bo, 0);
                codebook_bits(ctx, channel, i - 1, offset_max + 1,
                            min, max, &temp_bo, 1);
            }

            ctx->cur_best_offset[channel][i] = temp_bo;
        }
    }
}
