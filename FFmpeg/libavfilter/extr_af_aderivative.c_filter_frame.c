
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {TYPE_1__* prev; int (* filter ) (void**,void**,void const**,int,int ) ;} ;
struct TYPE_17__ {TYPE_3__** outputs; TYPE_5__* priv; } ;
struct TYPE_16__ {TYPE_4__* dst; } ;
struct TYPE_15__ {int nb_samples; int channels; scalar_t__ extended_data; } ;
struct TYPE_14__ {scalar_t__ extended_data; } ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;
typedef TYPE_5__ ADerivativeContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 void* ff_get_audio_buffer (TYPE_3__*,int) ;
 int stub1 (void**,void**,void const**,int,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    ADerivativeContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = ff_get_audio_buffer(outlink, in->nb_samples);

    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    if (!s->prev) {
        s->prev = ff_get_audio_buffer(inlink, 1);
        if (!s->prev) {
            av_frame_free(&in);
            return AVERROR(ENOMEM);
        }
    }

    s->filter((void **)out->extended_data, (void **)s->prev->extended_data, (const void **)in->extended_data,
              in->nb_samples, in->channels);

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
