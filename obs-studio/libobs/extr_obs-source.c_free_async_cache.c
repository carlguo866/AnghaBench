
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct obs_source {int * prev_async_frame; int * cur_async_frame; TYPE_2__ async_frames; TYPE_2__ async_cache; } ;
struct TYPE_3__ {int frame; } ;


 int da_resize (TYPE_2__,int ) ;
 int obs_source_frame_decref (int ) ;

__attribute__((used)) static inline void free_async_cache(struct obs_source *source)
{
 for (size_t i = 0; i < source->async_cache.num; i++)
  obs_source_frame_decref(source->async_cache.array[i].frame);

 da_resize(source->async_cache, 0);
 da_resize(source->async_frames, 0);
 source->cur_async_frame = ((void*)0);
 source->prev_async_frame = ((void*)0);
}
