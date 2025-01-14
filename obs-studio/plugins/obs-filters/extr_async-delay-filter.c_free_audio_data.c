
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_audio_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct async_delay_data {TYPE_1__ audio_frames; } ;


 int circlebuf_pop_front (TYPE_1__*,struct obs_audio_data*,int) ;
 int free_audio_packet (struct obs_audio_data*) ;

__attribute__((used)) static void free_audio_data(struct async_delay_data *filter)
{
 while (filter->audio_frames.size) {
  struct obs_audio_data audio;

  circlebuf_pop_front(&filter->audio_frames, &audio,
        sizeof(struct obs_audio_data));
  free_audio_packet(&audio);
 }
}
