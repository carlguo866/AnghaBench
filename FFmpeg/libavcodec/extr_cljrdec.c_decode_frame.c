
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int height; int width; } ;
struct TYPE_10__ {int key_frame; int** data; int* linesize; int pict_type; } ;
struct TYPE_9__ {int* data; int size; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int av_log (TYPE_3__*,int ,char*) ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__* const,int ) ;
 int get_bits (int *,int) ;
 int init_get_bits (int *,int const*,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx,
                        void *data, int *got_frame,
                        AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    GetBitContext gb;
    AVFrame * const p = data;
    int x, y, ret;

    if (avctx->height <= 0 || avctx->width <= 0) {
        av_log(avctx, AV_LOG_ERROR, "Invalid width or height\n");
        return AVERROR_INVALIDDATA;
    }

    if (buf_size / avctx->height < avctx->width) {
        av_log(avctx, AV_LOG_ERROR,
               "Resolution larger than buffer size. Invalid header?\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = ff_get_buffer(avctx, p, 0)) < 0)
        return ret;
    p->pict_type = AV_PICTURE_TYPE_I;
    p->key_frame = 1;

    init_get_bits(&gb, buf, buf_size * 8);

    for (y = 0; y < avctx->height; y++) {
        uint8_t *luma = &p->data[0][y * p->linesize[0]];
        uint8_t *cb = &p->data[1][y * p->linesize[1]];
        uint8_t *cr = &p->data[2][y * p->linesize[2]];
        for (x = 0; x < avctx->width; x += 4) {
            luma[3] = (get_bits(&gb, 5)*33) >> 2;
            luma[2] = (get_bits(&gb, 5)*33) >> 2;
            luma[1] = (get_bits(&gb, 5)*33) >> 2;
            luma[0] = (get_bits(&gb, 5)*33) >> 2;
            luma += 4;
            *(cb++) = get_bits(&gb, 6) << 2;
            *(cr++) = get_bits(&gb, 6) << 2;
        }
    }

    *got_frame = 1;

    return buf_size;
}
