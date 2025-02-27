
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {int codec_id; } ;
struct TYPE_18__ {unsigned int nb_streams; TYPE_1__** streams; } ;
struct TYPE_17__ {TYPE_2__* dec_ctx; } ;
struct TYPE_16__ {scalar_t__ codec_type; int framerate; } ;
struct TYPE_15__ {TYPE_8__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVCodecContext ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 int AVERROR_DECODER_NOT_FOUND ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_dump_format (TYPE_4__*,int ,char const*,int ) ;
 int av_guess_frame_rate (TYPE_4__*,TYPE_1__*,int *) ;
 int av_log (int *,int ,char*,...) ;
 TYPE_3__* av_mallocz_array (unsigned int,int) ;
 TYPE_2__* avcodec_alloc_context3 (int *) ;
 int * avcodec_find_decoder (int ) ;
 int avcodec_open2 (TYPE_2__*,int *,int *) ;
 int avcodec_parameters_to_context (TYPE_2__*,TYPE_8__*) ;
 int avformat_find_stream_info (TYPE_4__*,int *) ;
 int avformat_open_input (TYPE_4__**,char const*,int *,int *) ;
 TYPE_4__* ifmt_ctx ;
 TYPE_3__* stream_ctx ;

__attribute__((used)) static int open_input_file(const char *filename)
{
    int ret;
    unsigned int i;

    ifmt_ctx = ((void*)0);
    if ((ret = avformat_open_input(&ifmt_ctx, filename, ((void*)0), ((void*)0))) < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Cannot open input file\n");
        return ret;
    }

    if ((ret = avformat_find_stream_info(ifmt_ctx, ((void*)0))) < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Cannot find stream information\n");
        return ret;
    }

    stream_ctx = av_mallocz_array(ifmt_ctx->nb_streams, sizeof(*stream_ctx));
    if (!stream_ctx)
        return AVERROR(ENOMEM);

    for (i = 0; i < ifmt_ctx->nb_streams; i++) {
        AVStream *stream = ifmt_ctx->streams[i];
        AVCodec *dec = avcodec_find_decoder(stream->codecpar->codec_id);
        AVCodecContext *codec_ctx;
        if (!dec) {
            av_log(((void*)0), AV_LOG_ERROR, "Failed to find decoder for stream #%u\n", i);
            return AVERROR_DECODER_NOT_FOUND;
        }
        codec_ctx = avcodec_alloc_context3(dec);
        if (!codec_ctx) {
            av_log(((void*)0), AV_LOG_ERROR, "Failed to allocate the decoder context for stream #%u\n", i);
            return AVERROR(ENOMEM);
        }
        ret = avcodec_parameters_to_context(codec_ctx, stream->codecpar);
        if (ret < 0) {
            av_log(((void*)0), AV_LOG_ERROR, "Failed to copy decoder parameters to input decoder context "
                   "for stream #%u\n", i);
            return ret;
        }

        if (codec_ctx->codec_type == AVMEDIA_TYPE_VIDEO
                || codec_ctx->codec_type == AVMEDIA_TYPE_AUDIO) {
            if (codec_ctx->codec_type == AVMEDIA_TYPE_VIDEO)
                codec_ctx->framerate = av_guess_frame_rate(ifmt_ctx, stream, ((void*)0));

            ret = avcodec_open2(codec_ctx, dec, ((void*)0));
            if (ret < 0) {
                av_log(((void*)0), AV_LOG_ERROR, "Failed to open decoder for stream #%u\n", i);
                return ret;
            }
        }
        stream_ctx[i].dec_ctx = codec_ctx;
    }

    av_dump_format(ifmt_ctx, 0, filename, 0);
    return 0;
}
