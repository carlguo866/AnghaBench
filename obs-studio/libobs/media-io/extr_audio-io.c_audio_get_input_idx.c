
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num; struct audio_input* array; } ;
struct audio_mix {TYPE_1__ inputs; } ;
struct audio_input {scalar_t__ callback; void* param; } ;
struct TYPE_5__ {struct audio_mix* mixes; } ;
typedef TYPE_2__ audio_t ;
typedef scalar_t__ audio_output_callback_t ;


 size_t DARRAY_INVALID ;

__attribute__((used)) static size_t audio_get_input_idx(const audio_t *audio, size_t mix_idx,
      audio_output_callback_t callback, void *param)
{
 const struct audio_mix *mix = &audio->mixes[mix_idx];

 for (size_t i = 0; i < mix->inputs.num; i++) {
  struct audio_input *input = mix->inputs.array + i;

  if (input->callback == callback && input->param == param)
   return i;
 }

 return DARRAY_INVALID;
}
