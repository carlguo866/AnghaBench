
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
struct TYPE_12__ {int channels; int sample_rate; int frame_size; int bit_rate; int channel_layout; TYPE_2__* priv_data; } ;
struct TYPE_11__ {char* data; int size; } ;
struct TYPE_10__ {int frame_size; int nb_channels; int sample_rate; TYPE_1__* frame; int bit_rate; } ;
struct TYPE_9__ {int nb_samples; } ;
typedef int MPADecodeHeader ;
typedef TYPE_2__ MPADecodeContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_RB32 (char const*) ;
 int HEADER_SIZE ;
 int av_log (TYPE_4__*,int ,char*) ;
 int avpriv_mpegaudio_decode_header (int *,int) ;
 int mp_decode_frame (TYPE_2__*,int *,char const*,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext * avctx, void *data, int *got_frame_ptr,
                        AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    MPADecodeContext *s = avctx->priv_data;
    uint32_t header;
    int ret;

    int skipped = 0;
    while(buf_size && !*buf){
        buf++;
        buf_size--;
        skipped++;
    }

    if (buf_size < HEADER_SIZE)
        return AVERROR_INVALIDDATA;

    header = AV_RB32(buf);
    if (header>>8 == AV_RB32("TAG")>>8) {
        av_log(avctx, AV_LOG_DEBUG, "discarding ID3 tag\n");
        return buf_size + skipped;
    }
    ret = avpriv_mpegaudio_decode_header((MPADecodeHeader *)s, header);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Header missing\n");
        return AVERROR_INVALIDDATA;
    } else if (ret == 1) {

        s->frame_size = -1;
        return AVERROR_INVALIDDATA;
    }

    avctx->channels = s->nb_channels;
    avctx->channel_layout = s->nb_channels == 1 ? AV_CH_LAYOUT_MONO : AV_CH_LAYOUT_STEREO;
    if (!avctx->bit_rate)
        avctx->bit_rate = s->bit_rate;

    if (s->frame_size <= 0) {
        av_log(avctx, AV_LOG_ERROR, "incomplete frame\n");
        return AVERROR_INVALIDDATA;
    } else if (s->frame_size < buf_size) {
        av_log(avctx, AV_LOG_DEBUG, "incorrect frame size - multiple frames in buffer?\n");
        buf_size= s->frame_size;
    }

    s->frame = data;

    ret = mp_decode_frame(s, ((void*)0), buf, buf_size);
    if (ret >= 0) {
        s->frame->nb_samples = avctx->frame_size;
        *got_frame_ptr = 1;
        avctx->sample_rate = s->sample_rate;

    } else {
        av_log(avctx, AV_LOG_ERROR, "Error while decoding MPEG audio frame.\n");





        *got_frame_ptr = 0;
        if (buf_size == avpkt->size || ret != AVERROR_INVALIDDATA)
            return ret;
    }
    s->frame_size = 0;
    return buf_size + skipped;
}
