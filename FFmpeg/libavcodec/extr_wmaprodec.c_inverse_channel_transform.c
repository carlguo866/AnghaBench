
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int8_t ;
typedef int int16_t ;
struct TYPE_7__ {int num_chgroups; int* cur_sfb_offsets; int num_bands; int nb_channels; TYPE_2__* fdsp; int subframe_len; TYPE_1__* chgroup; } ;
typedef TYPE_3__ WMAProDecodeCtx ;
struct TYPE_6__ {int (* vector_fmul_scalar ) (float*,float*,double,int) ;} ;
struct TYPE_5__ {int num_channels; float** channel_data; float* decorrelation_matrix; int * transform_band; scalar_t__ transform; } ;


 int FFMIN (int,int ) ;
 int WMAPRO_MAX_CHANNELS ;
 int stub1 (float*,float*,double,int) ;
 int stub2 (float*,float*,double,int) ;

__attribute__((used)) static void inverse_channel_transform(WMAProDecodeCtx *s)
{
    int i;

    for (i = 0; i < s->num_chgroups; i++) {
        if (s->chgroup[i].transform) {
            float data[WMAPRO_MAX_CHANNELS];
            const int num_channels = s->chgroup[i].num_channels;
            float** ch_data = s->chgroup[i].channel_data;
            float** ch_end = ch_data + num_channels;
            const int8_t* tb = s->chgroup[i].transform_band;
            int16_t* sfb;


            for (sfb = s->cur_sfb_offsets;
                 sfb < s->cur_sfb_offsets + s->num_bands; sfb++) {
                int y;
                if (*tb++ == 1) {

                    for (y = sfb[0]; y < FFMIN(sfb[1], s->subframe_len); y++) {
                        const float* mat = s->chgroup[i].decorrelation_matrix;
                        const float* data_end = data + num_channels;
                        float* data_ptr = data;
                        float** ch;

                        for (ch = ch_data; ch < ch_end; ch++)
                            *data_ptr++ = (*ch)[y];

                        for (ch = ch_data; ch < ch_end; ch++) {
                            float sum = 0;
                            data_ptr = data;
                            while (data_ptr < data_end)
                                sum += *data_ptr++ * *mat++;

                            (*ch)[y] = sum;
                        }
                    }
                } else if (s->nb_channels == 2) {
                    int len = FFMIN(sfb[1], s->subframe_len) - sfb[0];
                    s->fdsp->vector_fmul_scalar(ch_data[0] + sfb[0],
                                               ch_data[0] + sfb[0],
                                               181.0 / 128, len);
                    s->fdsp->vector_fmul_scalar(ch_data[1] + sfb[0],
                                               ch_data[1] + sfb[0],
                                               181.0 / 128, len);
                }
            }
        }
    }
}
