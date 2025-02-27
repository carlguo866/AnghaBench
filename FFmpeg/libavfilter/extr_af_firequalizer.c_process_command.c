
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {char* gain_cmd; char* gain_entry_cmd; } ;
typedef TYPE_1__ FIREqualizerContext ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int ENOMEM ;
 int ENOSYS ;
 char* SELECT_GAIN (TYPE_1__*) ;
 char const* SELECT_GAIN_ENTRY (TYPE_1__*) ;
 int av_freep (char**) ;
 int av_log (TYPE_2__*,int ,char*) ;
 char* av_strdup (char const*) ;
 int generate_kernel (TYPE_2__*,char*,char*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    FIREqualizerContext *s = ctx->priv;
    int ret = AVERROR(ENOSYS);

    if (!strcmp(cmd, "gain")) {
        char *gain_cmd;

        if (SELECT_GAIN(s) && !strcmp(SELECT_GAIN(s), args)) {
            av_log(ctx, AV_LOG_DEBUG, "equal gain, do not rebuild.\n");
            return 0;
        }

        gain_cmd = av_strdup(args);
        if (!gain_cmd)
            return AVERROR(ENOMEM);

        ret = generate_kernel(ctx, gain_cmd, SELECT_GAIN_ENTRY(s));
        if (ret >= 0) {
            av_freep(&s->gain_cmd);
            s->gain_cmd = gain_cmd;
        } else {
            av_freep(&gain_cmd);
        }
    } else if (!strcmp(cmd, "gain_entry")) {
        char *gain_entry_cmd;

        if (SELECT_GAIN_ENTRY(s) && !strcmp(SELECT_GAIN_ENTRY(s), args)) {
            av_log(ctx, AV_LOG_DEBUG, "equal gain_entry, do not rebuild.\n");
            return 0;
        }

        gain_entry_cmd = av_strdup(args);
        if (!gain_entry_cmd)
            return AVERROR(ENOMEM);

        ret = generate_kernel(ctx, SELECT_GAIN(s), gain_entry_cmd);
        if (ret >= 0) {
            av_freep(&s->gain_entry_cmd);
            s->gain_entry_cmd = gain_entry_cmd;
        } else {
            av_freep(&gain_entry_cmd);
        }
    }

    return ret;
}
