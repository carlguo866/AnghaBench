
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int component; TYPE_5__* priv; TYPE_3__* format; } ;
struct TYPE_12__ {TYPE_4__* module; } ;
struct TYPE_11__ {scalar_t__ needs_configuring; } ;
struct TYPE_10__ {scalar_t__ type; scalar_t__ encoding; TYPE_2__* es; } ;
struct TYPE_8__ {int channels; int bits_per_sample; } ;
struct TYPE_9__ {TYPE_1__ audio; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_6__ MMAL_PORT_T ;


 int LOG_ERROR (char*,char*,int,int) ;
 int MMAL_EINVAL ;
 scalar_t__ MMAL_ENCODING_AC3 ;
 scalar_t__ MMAL_ENCODING_EAC3 ;
 scalar_t__ MMAL_ENCODING_PCM_SIGNED ;
 scalar_t__ MMAL_ES_TYPE_AUDIO ;
 int MMAL_SUCCESS ;
 int mmal_component_action_trigger (int ) ;

__attribute__((used)) static MMAL_STATUS_T spdif_output_port_format_commit(MMAL_PORT_T *out)
{
   int supported = 0;

   if (out->format->type == MMAL_ES_TYPE_AUDIO &&
       out->format->encoding == MMAL_ENCODING_PCM_SIGNED &&
       out->format->es->audio.channels == 2 &&
       out->format->es->audio.bits_per_sample == 16)
      supported = 1;
   if (out->format->type == MMAL_ES_TYPE_AUDIO &&
       (out->format->encoding == MMAL_ENCODING_AC3 ||
        out->format->encoding == MMAL_ENCODING_EAC3))
      supported = 1;

   if (!supported)
   {
      LOG_ERROR("invalid format %4.4s, %ichan, %ibps",
         (char *)&out->format->encoding, out->format->es->audio.channels,
         out->format->es->audio.bits_per_sample);
      return MMAL_EINVAL;
   }

   out->priv->module->needs_configuring = 0;
   mmal_component_action_trigger(out->component);
   return MMAL_SUCCESS;
}
