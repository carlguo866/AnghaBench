
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int vlc_player_t ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;
typedef int int64_t ;


 int US_FROM_VLC_TICK (int ) ;
 int vlc_player_GetSubtitleDelay (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;

int64_t libvlc_video_get_spu_delay( libvlc_media_player_t *p_mi )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    vlc_tick_t delay = vlc_player_GetSubtitleDelay(player);

    vlc_player_Unlock(player);

    return US_FROM_VLC_TICK(delay);
}
