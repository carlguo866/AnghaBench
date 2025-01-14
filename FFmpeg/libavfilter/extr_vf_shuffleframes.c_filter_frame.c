
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int * outputs; TYPE_1__* priv; } ;
struct TYPE_13__ {TYPE_4__* dst; } ;
struct TYPE_12__ {int pts; } ;
struct TYPE_11__ {size_t in_frames; size_t nb_frames; int* map; TYPE_2__** frames; int * pts; } ;
typedef TYPE_1__ ShuffleFramesContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_2__* av_frame_clone (TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int ff_filter_frame (int ,TYPE_2__*) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    ShuffleFramesContext *s = ctx->priv;
    int ret = 0;

    if (s->in_frames < s->nb_frames) {
        s->frames[s->in_frames] = frame;
        s->pts[s->in_frames] = frame->pts;
        s->in_frames++;
    }

    if (s->in_frames == s->nb_frames) {
        int n, x;

        for (n = 0; n < s->nb_frames; n++) {
            AVFrame *out;

            x = s->map[n];
            if (x >= 0) {
                out = av_frame_clone(s->frames[x]);
                if (!out)
                    return AVERROR(ENOMEM);
                out->pts = s->pts[n];
                ret = ff_filter_frame(ctx->outputs[0], out);
            }
            s->in_frames--;
        }

        for (n = 0; n < s->nb_frames; n++)
            av_frame_free(&s->frames[n]);
    }

    return ret;
}
