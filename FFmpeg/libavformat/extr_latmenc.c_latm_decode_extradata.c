
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_2__* priv_data; } ;
struct TYPE_9__ {int off; scalar_t__ object_type; int channel_conf; } ;
struct TYPE_8__ {scalar_t__ object_type; int chan_config; } ;
typedef TYPE_1__ MPEG4AudioConfig ;
typedef TYPE_2__ LATMContext ;
typedef TYPE_3__ AVFormatContext ;


 scalar_t__ AOT_ALS ;
 scalar_t__ AOT_SBR ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int MAX_EXTRADATA_SIZE ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int avpriv_mpeg4audio_get_config2 (TYPE_1__*,int *,int,int,TYPE_3__*) ;

__attribute__((used)) static int latm_decode_extradata(AVFormatContext *s, uint8_t *buf, int size)
{
    LATMContext *ctx = s->priv_data;
    MPEG4AudioConfig m4ac;

    if (size > MAX_EXTRADATA_SIZE) {
        av_log(s, AV_LOG_ERROR, "Extradata is larger than currently supported.\n");
        return AVERROR_INVALIDDATA;
    }
    ctx->off = avpriv_mpeg4audio_get_config2(&m4ac, buf, size, 1, s);
    if (ctx->off < 0)
        return ctx->off;

    if (ctx->object_type == AOT_ALS && (ctx->off & 7)) {

        av_log(s, AV_LOG_ERROR, "BUG: ALS offset is not byte-aligned\n");
        return AVERROR_INVALIDDATA;
    }


    if (m4ac.object_type > AOT_SBR && m4ac.object_type != AOT_ALS) {
        av_log(s, AV_LOG_ERROR, "Muxing MPEG-4 AOT %d in LATM is not supported\n", m4ac.object_type);
        return AVERROR_INVALIDDATA;
    }
    ctx->channel_conf = m4ac.chan_config;
    ctx->object_type = m4ac.object_type;

    return 0;
}
