
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {int pix_fmt; TYPE_1__* priv_data; } ;
struct TYPE_15__ {int key_frame; int* linesize; int ** data; int pict_type; } ;
struct TYPE_14__ {int size; int data; } ;
struct TYPE_13__ {int bytes_per_channel; int height; int linesize; int g; void* width; void* depth; } ;
typedef TYPE_1__ SgiState ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int AV_PIX_FMT_GRAY16BE ;
 int AV_PIX_FMT_GRAY8 ;
 int AV_PIX_FMT_RGB24 ;
 int AV_PIX_FMT_RGB48BE ;
 int AV_PIX_FMT_RGBA ;
 int AV_PIX_FMT_RGBA64BE ;
 int SEEK_SET ;
 void* SGI_GRAYSCALE ;
 scalar_t__ SGI_HEADER_SIZE ;
 void* SGI_MAGIC ;
 void* SGI_RGB ;
 void* SGI_RGBA ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 void* bytestream2_get_be16u (int *) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 void* bytestream2_get_byteu (int *) ;
 int bytestream2_init (int *,int ,int) ;
 int bytestream2_seek (int *,scalar_t__,int ) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int ff_set_dimensions (TYPE_4__*,void*,int) ;
 int read_rle_sgi (int *,TYPE_1__*) ;
 int read_uncompressed_sgi (int *,TYPE_1__*) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx,
                        void *data, int *got_frame,
                        AVPacket *avpkt)
{
    SgiState *s = avctx->priv_data;
    AVFrame *p = data;
    unsigned int dimension, rle;
    int ret = 0;
    uint8_t *out_buf, *out_end;

    bytestream2_init(&s->g, avpkt->data, avpkt->size);
    if (bytestream2_get_bytes_left(&s->g) < SGI_HEADER_SIZE) {
        av_log(avctx, AV_LOG_ERROR, "buf_size too small (%d)\n", avpkt->size);
        return AVERROR_INVALIDDATA;
    }


    if (bytestream2_get_be16u(&s->g) != SGI_MAGIC) {
        av_log(avctx, AV_LOG_ERROR, "bad magic number\n");
        return AVERROR_INVALIDDATA;
    }

    rle = bytestream2_get_byteu(&s->g);
    s->bytes_per_channel = bytestream2_get_byteu(&s->g);
    dimension = bytestream2_get_be16u(&s->g);
    s->width = bytestream2_get_be16u(&s->g);
    s->height = bytestream2_get_be16u(&s->g);
    s->depth = bytestream2_get_be16u(&s->g);

    if (s->bytes_per_channel != 1 && s->bytes_per_channel != 2) {
        av_log(avctx, AV_LOG_ERROR, "wrong channel number\n");
        return AVERROR_INVALIDDATA;
    }


    if (dimension != 2 && dimension != 3) {
        av_log(avctx, AV_LOG_ERROR, "wrong dimension number\n");
        return AVERROR_INVALIDDATA;
    }

    if (s->depth == SGI_GRAYSCALE) {
        avctx->pix_fmt = s->bytes_per_channel == 2 ? AV_PIX_FMT_GRAY16BE : AV_PIX_FMT_GRAY8;
    } else if (s->depth == SGI_RGB) {
        avctx->pix_fmt = s->bytes_per_channel == 2 ? AV_PIX_FMT_RGB48BE : AV_PIX_FMT_RGB24;
    } else if (s->depth == SGI_RGBA) {
        avctx->pix_fmt = s->bytes_per_channel == 2 ? AV_PIX_FMT_RGBA64BE : AV_PIX_FMT_RGBA;
    } else {
        av_log(avctx, AV_LOG_ERROR, "wrong picture format\n");
        return AVERROR_INVALIDDATA;
    }

    ret = ff_set_dimensions(avctx, s->width, s->height);
    if (ret < 0)
        return ret;

    if ((ret = ff_get_buffer(avctx, p, 0)) < 0)
        return ret;

    p->pict_type = AV_PICTURE_TYPE_I;
    p->key_frame = 1;
    out_buf = p->data[0];

    out_end = out_buf + p->linesize[0] * s->height;

    s->linesize = p->linesize[0];


    bytestream2_seek(&s->g, SGI_HEADER_SIZE, SEEK_SET);
    if (rle) {
        ret = read_rle_sgi(out_end, s);
    } else {
        ret = read_uncompressed_sgi(out_buf, s);
    }
    if (ret)
        return ret;

    *got_frame = 1;
    return avpkt->size;
}
