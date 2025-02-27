
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; scalar_t__ data; } ;
struct TYPE_4__ {int album_peak; int album_gain; int track_peak; int track_gain; } ;
typedef TYPE_1__ AVReplayGain ;
typedef TYPE_2__ AVFrameSideData ;
typedef int AVFilterContext ;


 int AV_LOG_INFO ;
 int av_log (int *,int ,char*) ;
 int print_gain (int *,char*,int ) ;
 int print_peak (int *,char*,int ) ;

__attribute__((used)) static void dump_replaygain(AVFilterContext *ctx, AVFrameSideData *sd)
{
    AVReplayGain *rg;

    av_log(ctx, AV_LOG_INFO, "replaygain: ");
    if (sd->size < sizeof(*rg)) {
        av_log(ctx, AV_LOG_INFO, "invalid data");
        return;
    }
    rg = (AVReplayGain*)sd->data;

    print_gain(ctx, "track gain", rg->track_gain);
    print_peak(ctx, "track peak", rg->track_peak);
    print_gain(ctx, "album gain", rg->album_gain);
    print_peak(ctx, "album peak", rg->album_peak);
}
