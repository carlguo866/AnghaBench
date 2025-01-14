
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ num_chgroups; int nb_channels; int channels_for_cur_subframe; int* channel_indexes_for_cur_subframe; int num_bands; int gb; int avctx; TYPE_1__* channel; TYPE_3__* chgroup; } ;
typedef TYPE_2__ WMAProDecodeCtx ;
struct TYPE_9__ {float** channel_data; int num_channels; int transform; double* decorrelation_matrix; scalar_t__* transform_band; } ;
typedef TYPE_3__ WMAProChannelGrp ;
struct TYPE_7__ {int grouped; int coeffs; } ;


 int AVERROR_PATCHWELCOME ;
 int avpriv_request_sample (int ,char*) ;
 int decode_decorrelation_matrix (TYPE_2__*,TYPE_3__*) ;
 int * default_decorrelation ;
 scalar_t__ get_bits1 (int *) ;
 int memcpy (double*,int ,int) ;
 int memset (scalar_t__*,int,int) ;

__attribute__((used)) static int decode_channel_transform(WMAProDecodeCtx* s)
{
    int i;






    s->num_chgroups = 0;
    if (s->nb_channels > 1) {
        int remaining_channels = s->channels_for_cur_subframe;

        if (get_bits1(&s->gb)) {
            avpriv_request_sample(s->avctx,
                                  "Channel transform bit");
            return AVERROR_PATCHWELCOME;
        }

        for (s->num_chgroups = 0; remaining_channels &&
             s->num_chgroups < s->channels_for_cur_subframe; s->num_chgroups++) {
            WMAProChannelGrp* chgroup = &s->chgroup[s->num_chgroups];
            float** channel_data = chgroup->channel_data;
            chgroup->num_channels = 0;
            chgroup->transform = 0;


            if (remaining_channels > 2) {
                for (i = 0; i < s->channels_for_cur_subframe; i++) {
                    int channel_idx = s->channel_indexes_for_cur_subframe[i];
                    if (!s->channel[channel_idx].grouped
                        && get_bits1(&s->gb)) {
                        ++chgroup->num_channels;
                        s->channel[channel_idx].grouped = 1;
                        *channel_data++ = s->channel[channel_idx].coeffs;
                    }
                }
            } else {
                chgroup->num_channels = remaining_channels;
                for (i = 0; i < s->channels_for_cur_subframe; i++) {
                    int channel_idx = s->channel_indexes_for_cur_subframe[i];
                    if (!s->channel[channel_idx].grouped)
                        *channel_data++ = s->channel[channel_idx].coeffs;
                    s->channel[channel_idx].grouped = 1;
                }
            }


            if (chgroup->num_channels == 2) {
                if (get_bits1(&s->gb)) {
                    if (get_bits1(&s->gb)) {
                        avpriv_request_sample(s->avctx,
                                              "Unknown channel transform type");
                        return AVERROR_PATCHWELCOME;
                    }
                } else {
                    chgroup->transform = 1;
                    if (s->nb_channels == 2) {
                        chgroup->decorrelation_matrix[0] = 1.0;
                        chgroup->decorrelation_matrix[1] = -1.0;
                        chgroup->decorrelation_matrix[2] = 1.0;
                        chgroup->decorrelation_matrix[3] = 1.0;
                    } else {

                        chgroup->decorrelation_matrix[0] = 0.70703125;
                        chgroup->decorrelation_matrix[1] = -0.70703125;
                        chgroup->decorrelation_matrix[2] = 0.70703125;
                        chgroup->decorrelation_matrix[3] = 0.70703125;
                    }
                }
            } else if (chgroup->num_channels > 2) {
                if (get_bits1(&s->gb)) {
                    chgroup->transform = 1;
                    if (get_bits1(&s->gb)) {
                        decode_decorrelation_matrix(s, chgroup);
                    } else {

                        if (chgroup->num_channels > 6) {
                            avpriv_request_sample(s->avctx,
                                                  "Coupled channels > 6");
                        } else {
                            memcpy(chgroup->decorrelation_matrix,
                                   default_decorrelation[chgroup->num_channels],
                                   chgroup->num_channels * chgroup->num_channels *
                                   sizeof(*chgroup->decorrelation_matrix));
                        }
                    }
                }
            }


            if (chgroup->transform) {
                if (!get_bits1(&s->gb)) {
                    int i;

                    for (i = 0; i < s->num_bands; i++) {
                        chgroup->transform_band[i] = get_bits1(&s->gb);
                    }
                } else {
                    memset(chgroup->transform_band, 1, s->num_bands);
                }
            }
            remaining_channels -= chgroup->num_channels;
        }
    }
    return 0;
}
