
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_10__ {int event_manager; } ;
typedef TYPE_4__ libvlc_media_player_t ;
struct TYPE_8__ {int new_pausable; } ;
struct TYPE_7__ {int new_seekable; } ;
struct TYPE_9__ {TYPE_2__ media_player_pausable_changed; TYPE_1__ media_player_seekable_changed; } ;
struct TYPE_11__ {TYPE_3__ u; int type; } ;
typedef TYPE_5__ libvlc_event_t ;


 int VLC_PLAYER_CAP_PAUSE ;
 int VLC_PLAYER_CAP_SEEK ;
 int libvlc_MediaPlayerPausableChanged ;
 int libvlc_MediaPlayerSeekableChanged ;
 int libvlc_event_send (int *,TYPE_5__*) ;

__attribute__((used)) static void
on_capabilities_changed(vlc_player_t *player, int old_caps, int new_caps, void *data)
{
    (void) player;

    libvlc_media_player_t *mp = data;

    libvlc_event_t event;

    bool old_seekable = old_caps & VLC_PLAYER_CAP_SEEK;
    bool new_seekable = new_caps & VLC_PLAYER_CAP_SEEK;
    if (new_seekable != old_seekable)
    {
        event.type = libvlc_MediaPlayerSeekableChanged;
        event.u.media_player_seekable_changed.new_seekable = new_seekable;
        libvlc_event_send(&mp->event_manager, &event);
    }

    bool old_pauseable = old_caps & VLC_PLAYER_CAP_PAUSE;
    bool new_pauseable = new_caps & VLC_PLAYER_CAP_PAUSE;
    if (new_pauseable != old_pauseable)
    {
        event.type = libvlc_MediaPlayerPausableChanged;
        event.u.media_player_pausable_changed.new_pausable = new_pauseable;
        libvlc_event_send(&mp->event_manager, &event);
    }
}
