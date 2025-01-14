
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_14__ {int time_base; TYPE_4__* dst; } ;
struct TYPE_13__ {int pts; } ;
struct TYPE_12__ {int track; int renderer; } ;
typedef TYPE_1__ AssContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;
typedef int ASS_Image ;


 int AV_LOG_DEBUG ;
 int * ass_render_frame (int ,int ,double,int*) ;
 int av_log (TYPE_4__*,int ,char*,double) ;
 int av_q2d (int ) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 int overlay_ass_image (TYPE_1__*,TYPE_2__*,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *picref)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    AssContext *ass = ctx->priv;
    int detect_change = 0;
    double time_ms = picref->pts * av_q2d(inlink->time_base) * 1000;
    ASS_Image *image = ass_render_frame(ass->renderer, ass->track,
                                        time_ms, &detect_change);

    if (detect_change)
        av_log(ctx, AV_LOG_DEBUG, "Change happened at time ms:%f\n", time_ms);

    overlay_ass_image(ass, picref, image);

    return ff_filter_frame(outlink, picref);
}
