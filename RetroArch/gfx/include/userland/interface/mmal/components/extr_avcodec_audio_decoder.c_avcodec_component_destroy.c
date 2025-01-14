
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ codec; TYPE_3__* extradata; } ;
struct TYPE_10__ {scalar_t__ queue_out; scalar_t__ queue_in; TYPE_6__* output_buffer; TYPE_6__* codec_context; } ;
struct TYPE_9__ {int output; scalar_t__ output_num; int input; scalar_t__ input_num; TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_3__* module; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;
typedef TYPE_3__ MMAL_COMPONENT_MODULE_T ;


 int MMAL_SUCCESS ;
 int av_free (TYPE_6__*) ;
 int avcodec_close (TYPE_6__*) ;
 int mmal_ports_free (int ,int) ;
 int mmal_queue_destroy (scalar_t__) ;
 int vcos_free (TYPE_3__*) ;

__attribute__((used)) static MMAL_STATUS_T avcodec_component_destroy(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;

   if (module->codec_context)
   {
      if (module->codec_context->extradata)
         vcos_free(module->codec_context->extradata);
      if (module->codec_context->codec)
         avcodec_close(module->codec_context);
      av_free(module->codec_context);
   }
   if (module->output_buffer)
      av_free(module->output_buffer);

   if (module->queue_in)
      mmal_queue_destroy(module->queue_in);
   if (module->queue_out)
      mmal_queue_destroy(module->queue_out);
   vcos_free(module);
   if (component->input_num)
      mmal_ports_free(component->input, 1);
   if (component->output_num)
      mmal_ports_free(component->output, 1);
   return MMAL_SUCCESS;
}
