
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int speakers; } ;
struct TYPE_6__ {TYPE_1__ sample_info; } ;
typedef TYPE_2__ obs_source_t ;
typedef enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;


 int SPEAKERS_UNKNOWN ;
 int obs_source_valid (TYPE_2__*,char*) ;

enum speaker_layout obs_source_get_speaker_layout(obs_source_t *source)
{
 if (!obs_source_valid(source, "obs_source_get_audio_channels"))
  return SPEAKERS_UNKNOWN;

 return source->sample_info.speakers;
}
