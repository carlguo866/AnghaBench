
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_11__ {int duration; } ;
struct TYPE_13__ {int size; TYPE_2__ s; int const* data; } ;
typedef TYPE_4__ hb_buffer_t ;
struct TYPE_12__ {int sample_rate; int channels; int sample_size; int sample_fmt; } ;
struct TYPE_10__ {int sample_rate; } ;
struct TYPE_14__ {TYPE_3__ out; int dual_mono_right_only; scalar_t__ dual_mono_downmix; int * swresample; TYPE_1__ in; scalar_t__ resample_needed; } ;
typedef TYPE_5__ hb_audio_resample_t ;


 int av_samples_get_buffer_size (int *,int,int,int ,int ) ;
 int hb_buffer_close (TYPE_4__**) ;
 TYPE_4__* hb_buffer_init (int) ;
 int hb_error (char*) ;
 int hb_log (char*) ;
 int memcpy (int const*,int const*,int) ;
 int swr_convert (int *,int const**,int,int const**,int) ;

hb_buffer_t* hb_audio_resample(hb_audio_resample_t *resample,
                               const uint8_t **samples, int nsamples)
{
    if (resample == ((void*)0))
    {
        hb_error("hb_audio_resample: resample is NULL");
        return ((void*)0);
    }
    if (resample->resample_needed && resample->swresample == ((void*)0))
    {
        hb_error("hb_audio_resample: resample needed but libswresample context "
                 "is NULL");
        return ((void*)0);
    }

    hb_buffer_t *out;
    int out_size, out_samples;

    if (resample->resample_needed)
    {
        out_samples = nsamples * resample->out.sample_rate /
                                  resample->in.sample_rate + 1;
        out_size = av_samples_get_buffer_size(((void*)0), resample->out.channels,
                                              out_samples,
                                              resample->out.sample_fmt, 0);
        out = hb_buffer_init(out_size);
        out_samples = swr_convert(resample->swresample, &out->data, out_samples,
                                                        samples, nsamples);

        if (out_samples <= 0)
        {
            if (out_samples < 0)
            {
                hb_log("hb_audio_resample: swr_convert() failed");
            }

            hb_buffer_close(&out);
            return ((void*)0);
        }
        out->size = (out_samples *
                     resample->out.sample_size * resample->out.channels);
    }
    else
    {
        out_samples = nsamples;
        out_size = (out_samples *
                    resample->out.sample_size * resample->out.channels);
        out = hb_buffer_init(out_size);
        memcpy(out->data, samples[0], out_size);
    }







    if (resample->dual_mono_downmix)
    {
        int ii, jj = !!resample->dual_mono_right_only;
        int sample_size = resample->out.sample_size;
        uint8_t *audio_samples = out->data;
        for (ii = 0; ii < out_samples; ii++)
        {
            memcpy(audio_samples + (ii * sample_size),
                   audio_samples + (jj * sample_size), sample_size);
            jj += 2;
        }
        out->size = out_samples * sample_size;
    }
    out->s.duration = 90000. * out_samples / resample->out.sample_rate;

    return out;
}
