
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int draining; } ;
typedef TYPE_1__ V4L2m2mContext ;
struct TYPE_13__ {int name; } ;
typedef TYPE_2__ V4L2Context ;
typedef int V4L2Buffer ;
struct TYPE_14__ {int size; } ;
typedef TYPE_3__ AVPacket ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int av_log (int ,int ,char*,int ) ;
 TYPE_1__* ctx_to_m2mctx (TYPE_2__*) ;
 int ff_v4l2_buffer_avpkt_to_buf (TYPE_3__ const*,int *) ;
 int ff_v4l2_buffer_enqueue (int *) ;
 int logger (TYPE_2__*) ;
 int * v4l2_getfree_v4l2buf (TYPE_2__*) ;
 int v4l2_stop_decode (TYPE_2__*) ;

int ff_v4l2_context_enqueue_packet(V4L2Context* ctx, const AVPacket* pkt)
{
    V4L2m2mContext *s = ctx_to_m2mctx(ctx);
    V4L2Buffer* avbuf;
    int ret;

    if (!pkt->size) {
        ret = v4l2_stop_decode(ctx);
        if (ret)
            av_log(logger(ctx), AV_LOG_ERROR, "%s stop_decode\n", ctx->name);
        s->draining = 1;
        return 0;
    }

    avbuf = v4l2_getfree_v4l2buf(ctx);
    if (!avbuf)
        return AVERROR(EAGAIN);

    ret = ff_v4l2_buffer_avpkt_to_buf(pkt, avbuf);
    if (ret)
        return ret;

    return ff_v4l2_buffer_enqueue(avbuf);
}
