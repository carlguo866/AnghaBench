
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int uint8_t ;
struct record_params {int channels; double samplerate; } ;
struct ff_config_param {char* acodec; int sample_rate; scalar_t__ audio_opts; scalar_t__ audio_bit_rate; int audio_global_quality; scalar_t__ audio_qscale; } ;
struct ff_audio_info {double ratio; int sample_size; int outbuf_size; int * outbuf; int * buffer; TYPE_10__* codec; int resampler; int resampler_data; int * encoder; } ;
struct TYPE_13__ {int audio_resampler; } ;
struct TYPE_17__ {TYPE_1__ arrays; } ;
typedef TYPE_5__ settings_t ;
struct TYPE_16__ {TYPE_3__* ctx; } ;
struct TYPE_18__ {TYPE_4__ muxer; struct record_params params; struct ff_audio_info audio; struct ff_config_param config; } ;
typedef TYPE_6__ ffmpeg_t ;
struct TYPE_15__ {TYPE_2__* oformat; } ;
struct TYPE_14__ {int flags; } ;
struct TYPE_12__ {int channels; int sample_rate; int frame_size; int flags; int strict_std_compliance; scalar_t__ bit_rate; int global_quality; void* time_base; int sample_fmt; int channel_layout; int codec_type; } ;
typedef int AVCodec ;


 int AVFMT_GLOBALHEADER ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_FLAG_GLOBAL_HEADER ;
 int AV_CODEC_FLAG_QSCALE ;
 int AV_INPUT_BUFFER_MIN_SIZE ;
 int AV_SAMPLE_FMT_S16 ;
 int FF_COMPLIANCE_EXPERIMENTAL ;
 int RARCH_ERR (char*,char*) ;
 int RARCH_LOG (char*,int) ;
 int RESAMPLER_QUALITY_DONTCARE ;
 void* av_d2q (double,int) ;
 scalar_t__ av_malloc (int) ;
 TYPE_10__* avcodec_alloc_context3 (int *) ;
 int * avcodec_find_encoder_by_name (char*) ;
 scalar_t__ avcodec_open2 (TYPE_10__*,int *,scalar_t__*) ;
 TYPE_5__* config_get_ptr () ;
 int ffmpeg_audio_resolve_format (struct ff_audio_info*,int *) ;
 int ffmpeg_audio_resolve_sample_rate (TYPE_6__*,int *) ;
 int retro_resampler_realloc (int *,int *,int ,int ,double) ;
 scalar_t__ roundf (double) ;

__attribute__((used)) static bool ffmpeg_init_audio(ffmpeg_t *handle)
{
   settings_t *settings = config_get_ptr();
   struct ff_config_param *params = &handle->config;
   struct ff_audio_info *audio = &handle->audio;
   struct record_params *param = &handle->params;
   AVCodec *codec = avcodec_find_encoder_by_name(
         *params->acodec ? params->acodec : "flac");
   if (!codec)
   {
      RARCH_ERR("[FFmpeg]: Cannot find acodec %s.\n",
            *params->acodec ? params->acodec : "flac");
      return 0;
   }

   audio->encoder = codec;

   audio->codec = avcodec_alloc_context3(codec);

   audio->codec->codec_type = AVMEDIA_TYPE_AUDIO;
   audio->codec->channels = param->channels;
   audio->codec->channel_layout = (param->channels > 1)
      ? AV_CH_LAYOUT_STEREO : AV_CH_LAYOUT_MONO;

   ffmpeg_audio_resolve_format(audio, codec);
   ffmpeg_audio_resolve_sample_rate(handle, codec);

   if (params->sample_rate)
   {
      audio->ratio = (double)params->sample_rate / param->samplerate;
      audio->codec->sample_rate = params->sample_rate;
      audio->codec->time_base = av_d2q(1.0 / params->sample_rate, 1000000);

      retro_resampler_realloc(&audio->resampler_data,
            &audio->resampler,
            settings->arrays.audio_resampler,
            RESAMPLER_QUALITY_DONTCARE,
            audio->ratio);
   }
   else
   {
      audio->codec->sample_fmt = AV_SAMPLE_FMT_S16;
      audio->codec->sample_rate = (int)roundf(param->samplerate);
      audio->codec->time_base = av_d2q(1.0 / param->samplerate, 1000000);
   }

   if (params->audio_qscale)
   {
      audio->codec->flags |= AV_CODEC_FLAG_QSCALE;
      audio->codec->global_quality = params->audio_global_quality;
   }
   else if (params->audio_bit_rate)
      audio->codec->bit_rate = params->audio_bit_rate;


   audio->codec->strict_std_compliance = FF_COMPLIANCE_EXPERIMENTAL;

   if (handle->muxer.ctx->oformat->flags & AVFMT_GLOBALHEADER)
      audio->codec->flags |= AV_CODEC_FLAG_GLOBAL_HEADER;

   if (avcodec_open2(audio->codec, codec, params->audio_opts ? &params->audio_opts : ((void*)0)) != 0)
      return 0;

   if (!audio->codec->frame_size)
      audio->codec->frame_size = 1024;

   audio->buffer = (uint8_t*)av_malloc(
         audio->codec->frame_size *
         audio->codec->channels *
         audio->sample_size);





   if (!audio->buffer)
      return 0;

   audio->outbuf_size = AV_INPUT_BUFFER_MIN_SIZE;
   audio->outbuf = (uint8_t*)av_malloc(audio->outbuf_size);
   if (!audio->outbuf)
      return 0;

   return 1;
}
