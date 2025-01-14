
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {size_t n; size_t n_frames; TYPE_1__* frames; } ;
typedef TYPE_2__ ThumbContext ;
struct TYPE_14__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
struct TYPE_13__ {int h; int w; TYPE_5__* dst; } ;
struct TYPE_12__ {int** data; int * linesize; } ;
struct TYPE_10__ {int* histogram; TYPE_3__* buf; } ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int ff_filter_frame (TYPE_4__*,int ) ;
 int get_best_frame (TYPE_5__*) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    int i, j;
    AVFilterContext *ctx = inlink->dst;
    ThumbContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    int *hist = s->frames[s->n].histogram;
    const uint8_t *p = frame->data[0];


    s->frames[s->n].buf = frame;


    for (j = 0; j < inlink->h; j++) {
        for (i = 0; i < inlink->w; i++) {
            hist[0*256 + p[i*3 ]]++;
            hist[1*256 + p[i*3 + 1]]++;
            hist[2*256 + p[i*3 + 2]]++;
        }
        p += frame->linesize[0];
    }


    s->n++;
    if (s->n < s->n_frames)
        return 0;

    return ff_filter_frame(outlink, get_best_frame(ctx));
}
