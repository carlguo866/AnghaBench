
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int width; int height; int const* linesize; int ** data; } ;
struct TYPE_5__ {int pos_x; int pos_y; } ;
typedef TYPE_1__ SierpinskiContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int AV_WL32 (int *,int) ;

__attribute__((used)) static int draw_triangle_slice(AVFilterContext *ctx, void *arg, int job, int nb_jobs)
{
    SierpinskiContext *s = ctx->priv;
    AVFrame *frame = arg;
    const int width = frame->width;
    const int height = frame->height;
    const int start = (height * job ) / nb_jobs;
    const int end = (height * (job+1)) / nb_jobs;
    uint8_t *dst = frame->data[0] + start * frame->linesize[0];

    for (int y = start; y < end; y++) {
        for (int x = 0; x < width; x++) {
            if ((s->pos_x + x) & (s->pos_y + y)) {
                AV_WL32(&dst[x*4], 0x00000000);
            } else {
                AV_WL32(&dst[x*4], 0xFFFFFFFF);
            }
        }

        dst += frame->linesize[0];
    }

    return 0;
}
