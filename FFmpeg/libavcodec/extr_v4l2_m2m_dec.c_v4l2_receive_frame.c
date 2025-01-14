
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* context; } ;
typedef TYPE_1__ V4L2m2mPriv ;
struct TYPE_14__ {scalar_t__ size; int member_0; } ;
struct TYPE_13__ {TYPE_3__ buf_pkt; scalar_t__ draining; int output; int capture; } ;
typedef TYPE_2__ V4L2m2mContext ;
typedef int V4L2Context ;
struct TYPE_15__ {scalar_t__ priv_data; } ;
typedef TYPE_3__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int ENOMEM ;
 int av_packet_unref (TYPE_3__*) ;
 int ff_decode_get_packet (TYPE_4__*,TYPE_3__*) ;
 int ff_v4l2_context_dequeue_frame (int * const,int *,int) ;
 int ff_v4l2_context_enqueue_packet (int * const,TYPE_3__*) ;
 int memset (TYPE_3__*,int ,int) ;
 int v4l2_try_start (TYPE_4__*) ;

__attribute__((used)) static int v4l2_receive_frame(AVCodecContext *avctx, AVFrame *frame)
{
    V4L2m2mContext *s = ((V4L2m2mPriv*)avctx->priv_data)->context;
    V4L2Context *const capture = &s->capture;
    V4L2Context *const output = &s->output;
    AVPacket avpkt = {0};
    int ret;

    if (s->buf_pkt.size) {
        avpkt = s->buf_pkt;
        memset(&s->buf_pkt, 0, sizeof(AVPacket));
    } else {
        ret = ff_decode_get_packet(avctx, &avpkt);
        if (ret < 0 && ret != AVERROR_EOF)
            return ret;
    }

    if (s->draining)
        goto dequeue;

    ret = ff_v4l2_context_enqueue_packet(output, &avpkt);
    if (ret < 0) {
        if (ret != AVERROR(EAGAIN))
           return ret;

        s->buf_pkt = avpkt;

    }

    if (avpkt.size) {
        ret = v4l2_try_start(avctx);
        if (ret) {
            av_packet_unref(&avpkt);


            if (ret == AVERROR(ENOMEM))
                return ret;

            return 0;
        }
    }

dequeue:
    if (!s->buf_pkt.size)
        av_packet_unref(&avpkt);
    return ff_v4l2_context_dequeue_frame(capture, frame, -1);
}
