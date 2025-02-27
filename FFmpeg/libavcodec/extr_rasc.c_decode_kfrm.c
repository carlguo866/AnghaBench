
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


typedef int uint8_t ;
struct TYPE_18__ {int avail_out; int * next_out; int avail_in; scalar_t__ next_in; } ;
struct TYPE_17__ {int height; TYPE_3__* priv_data; } ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {TYPE_2__* frame1; TYPE_6__ zstream; int stride; TYPE_1__* frame2; int gb; } ;
struct TYPE_14__ {int* linesize; int ** data; } ;
struct TYPE_13__ {int* linesize; int ** data; } ;
typedef TYPE_3__ RASCContext ;
typedef int GetByteContext ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR_EXTERNAL ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_SYNC_FLUSH ;
 int av_log (TYPE_5__*,int ,char*,int) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_peek_le32 (int *) ;
 int bytestream2_skip (int *,unsigned int) ;
 unsigned int bytestream2_tell (int *) ;
 int decode_fint (TYPE_5__*,TYPE_4__*,unsigned int) ;
 int inflate (TYPE_6__*,int ) ;
 int inflateReset (TYPE_6__*) ;

__attribute__((used)) static int decode_kfrm(AVCodecContext *avctx,
                       AVPacket *avpkt, unsigned size)
{
    RASCContext *s = avctx->priv_data;
    GetByteContext *gb = &s->gb;
    uint8_t *dst;
    unsigned pos;
    int zret, ret;

    pos = bytestream2_tell(gb);
    if (bytestream2_peek_le32(gb) == 0x65) {
        ret = decode_fint(avctx, avpkt, size);
        if (ret < 0)
            return ret;
    }

    if (!s->frame2->data[0])
        return AVERROR_INVALIDDATA;

    zret = inflateReset(&s->zstream);
    if (zret != Z_OK) {
        av_log(avctx, AV_LOG_ERROR, "Inflate reset error: %d\n", zret);
        return AVERROR_EXTERNAL;
    }

    s->zstream.next_in = avpkt->data + bytestream2_tell(gb);
    s->zstream.avail_in = bytestream2_get_bytes_left(gb);

    dst = s->frame2->data[0] + (avctx->height - 1) * s->frame2->linesize[0];
    for (int i = 0; i < avctx->height; i++) {
        s->zstream.next_out = dst;
        s->zstream.avail_out = s->stride;

        zret = inflate(&s->zstream, Z_SYNC_FLUSH);
        if (zret != Z_OK && zret != Z_STREAM_END) {
            av_log(avctx, AV_LOG_ERROR,
                   "Inflate failed with return code: %d.\n", zret);
            return AVERROR_INVALIDDATA;
        }

        dst -= s->frame2->linesize[0];
    }

    dst = s->frame1->data[0] + (avctx->height - 1) * s->frame1->linesize[0];
    for (int i = 0; i < avctx->height; i++) {
        s->zstream.next_out = dst;
        s->zstream.avail_out = s->stride;

        zret = inflate(&s->zstream, Z_SYNC_FLUSH);
        if (zret != Z_OK && zret != Z_STREAM_END) {
            av_log(avctx, AV_LOG_ERROR,
                   "Inflate failed with return code: %d.\n", zret);
            return AVERROR_INVALIDDATA;
        }

        dst -= s->frame1->linesize[0];
    }

    bytestream2_skip(gb, size - (bytestream2_tell(gb) - pos));

    return 0;
}
