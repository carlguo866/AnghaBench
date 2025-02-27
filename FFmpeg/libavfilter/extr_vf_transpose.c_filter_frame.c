
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_22__ {scalar_t__ passthrough; } ;
typedef TYPE_3__ TransContext ;
struct TYPE_23__ {TYPE_5__* out; TYPE_5__* in; } ;
typedef TYPE_4__ ThreadData ;
struct TYPE_26__ {TYPE_2__* internal; TYPE_6__** outputs; TYPE_3__* priv; } ;
struct TYPE_25__ {int h; int w; TYPE_7__* dst; } ;
struct TYPE_20__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_24__ {TYPE_1__ sample_aspect_ratio; } ;
struct TYPE_21__ {int (* execute ) (TYPE_7__*,int ,TYPE_4__*,int *,int ) ;} ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVFilterLink ;
typedef TYPE_7__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int ,int ) ;
 int av_frame_copy_props (TYPE_5__*,TYPE_5__*) ;
 int av_frame_free (TYPE_5__**) ;
 int ff_filter_frame (TYPE_6__*,TYPE_5__*) ;
 int ff_filter_get_nb_threads (TYPE_7__*) ;
 TYPE_5__* ff_get_video_buffer (TYPE_6__*,int ,int ) ;
 int filter_slice ;
 int stub1 (TYPE_7__*,int ,TYPE_4__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    TransContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    ThreadData td;
    AVFrame *out;

    if (s->passthrough)
        return ff_filter_frame(outlink, in);

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    if (in->sample_aspect_ratio.num == 0) {
        out->sample_aspect_ratio = in->sample_aspect_ratio;
    } else {
        out->sample_aspect_ratio.num = in->sample_aspect_ratio.den;
        out->sample_aspect_ratio.den = in->sample_aspect_ratio.num;
    }

    td.in = in, td.out = out;
    ctx->internal->execute(ctx, filter_slice, &td, ((void*)0), FFMIN(outlink->h, ff_filter_get_nb_threads(ctx)));
    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
