
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_5__ {scalar_t__ repeat; int randomizer; TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;


 scalar_t__ VLC_PLAYLIST_PLAYBACK_REPEAT_ALL ;
 int randomizer_HasNext (int *) ;

__attribute__((used)) static inline bool
vlc_playlist_RandomOrderHasNext(vlc_playlist_t *playlist)
{
    if (playlist->repeat == VLC_PLAYLIST_PLAYBACK_REPEAT_ALL)
        return playlist->items.size > 0;
    return randomizer_HasNext(&playlist->randomizer);
}
