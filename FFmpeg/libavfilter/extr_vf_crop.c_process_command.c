
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ** inputs; int ** outputs; TYPE_1__* priv; } ;
struct TYPE_5__ {int x; int y; int w; int h; } ;
typedef TYPE_1__ CropContext ;
typedef int AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int av_opt_set (TYPE_1__*,char const*,char const*,int ) ;
 int config_input (int *) ;
 int config_output (int *) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    CropContext *s = ctx->priv;
    int ret;

    if ( !strcmp(cmd, "out_w") || !strcmp(cmd, "w")
        || !strcmp(cmd, "out_h") || !strcmp(cmd, "h")
        || !strcmp(cmd, "x") || !strcmp(cmd, "y")) {

        int old_x = s->x;
        int old_y = s->y;
        int old_w = s->w;
        int old_h = s->h;

        AVFilterLink *outlink = ctx->outputs[0];
        AVFilterLink *inlink = ctx->inputs[0];

        av_opt_set(s, cmd, args, 0);

        if ((ret = config_input(inlink)) < 0) {
            s->x = old_x;
            s->y = old_y;
            s->w = old_w;
            s->h = old_h;
            return ret;
        }

        ret = config_output(outlink);

    } else
        ret = AVERROR(ENOSYS);

    return ret;
}
