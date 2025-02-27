
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* whole_len; void* whole_len_left; void* pad_len; void* pad_len_left; scalar_t__ whole_dur; scalar_t__ pad_dur; } ;
struct TYPE_6__ {TYPE_3__* priv; } ;
struct TYPE_5__ {int sample_rate; TYPE_2__* src; } ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;
typedef TYPE_3__ APadContext ;


 int AV_TIME_BASE ;
 void* av_rescale (scalar_t__,int ,int ) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    APadContext *s = ctx->priv;

    if (s->pad_dur)
        s->pad_len = av_rescale(s->pad_dur, outlink->sample_rate, AV_TIME_BASE);
    if (s->whole_dur)
        s->whole_len = av_rescale(s->whole_dur, outlink->sample_rate, AV_TIME_BASE);

    s->pad_len_left = s->pad_len;
    s->whole_len_left = s->whole_len;

    return 0;
}
