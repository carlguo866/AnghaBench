
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_6__ {scalar_t__ input_normal_time; scalar_t__ input_length; scalar_t__ input_position; } ;
struct TYPE_7__ {TYPE_2__ timer; } ;
typedef TYPE_3__ vlc_player_t ;
struct TYPE_5__ {double rate; scalar_t__ length; scalar_t__ system_date; scalar_t__ position; scalar_t__ ts; } ;
struct vlc_player_timer_source {TYPE_1__ point; } ;


 scalar_t__ INT64_MAX ;
 scalar_t__ VLC_TICK_0 ;
 scalar_t__ VLC_TICK_INVALID ;
 int assert (int) ;

__attribute__((used)) static void
vlc_player_UpdateTimerSource(vlc_player_t *player,
                             struct vlc_player_timer_source *source,
                             double rate, vlc_tick_t ts, vlc_tick_t system_date)
{
    assert(ts >= VLC_TICK_0);
    assert(player->timer.input_normal_time >= VLC_TICK_0);

    source->point.rate = rate;
    source->point.ts = ts - player->timer.input_normal_time + VLC_TICK_0;
    source->point.length = player->timer.input_length;




    if (source->point.system_date == VLC_TICK_INVALID)
        source->point.system_date = INT64_MAX;
    else
        source->point.system_date = system_date;

    if (source->point.length != VLC_TICK_INVALID)
        source->point.position = (ts - player->timer.input_normal_time)
                               / (double) source->point.length;
    else
        source->point.position = player->timer.input_position;
}
