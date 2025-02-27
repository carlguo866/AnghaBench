
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {int index; int offs; } ;
struct TYPE_6__ {int sample_size; TYPE_1__ chunk; scalar_t__ time_start; } ;
typedef TYPE_2__ VC_CONTAINER_TRACK_MODULE_T ;


 scalar_t__ avi_stream_ticks_to_us (TYPE_2__*,int) ;

__attribute__((used)) static int64_t avi_calculate_chunk_time(VC_CONTAINER_TRACK_MODULE_T *track_module)
{
   if (track_module->sample_size == 0)
      return track_module->time_start + avi_stream_ticks_to_us(track_module, track_module->chunk.index);
   else
      return track_module->time_start + avi_stream_ticks_to_us(track_module,
         ((track_module->chunk.offs + (track_module->sample_size >> 1)) / track_module->sample_size));
}
