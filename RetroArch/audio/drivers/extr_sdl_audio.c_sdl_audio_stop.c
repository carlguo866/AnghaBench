
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; } ;
typedef TYPE_1__ sdl_audio_t ;


 int SDL_PauseAudio (int) ;

__attribute__((used)) static bool sdl_audio_stop(void *data)
{
   sdl_audio_t *sdl = (sdl_audio_t*)data;
   sdl->is_paused = 1;
   SDL_PauseAudio(1);
   return 1;
}
