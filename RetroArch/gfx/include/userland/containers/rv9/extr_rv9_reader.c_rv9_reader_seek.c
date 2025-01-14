
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef long long int64_t ;
struct TYPE_12__ {TYPE_1__* priv; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef scalar_t__ VC_CONTAINER_SEEK_MODE_T ;
typedef int VC_CONTAINER_SEEK_FLAGS_T ;
struct TYPE_13__ {scalar_t__ frame_read; scalar_t__ mid_frame; TYPE_3__* track; } ;
typedef TYPE_5__ VC_CONTAINER_MODULE_T ;
struct TYPE_11__ {TYPE_2__* format; } ;
struct TYPE_10__ {int extradata_size; } ;
struct TYPE_9__ {TYPE_5__* module; } ;


 int SEEK (TYPE_4__*,int ) ;
 int STREAM_STATUS (TYPE_4__*) ;
 int VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION ;
 int VC_CONTAINER_PARAM_UNUSED (int ) ;
 scalar_t__ VC_CONTAINER_SEEK_MODE_TIME ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rv9_reader_seek( VC_CONTAINER_T *p_ctx,
                                              int64_t *offset,
                                              VC_CONTAINER_SEEK_MODE_T mode,
                                              VC_CONTAINER_SEEK_FLAGS_T flags)
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_PARAM_UNUSED(flags);

   if(*offset == 0LL && mode == VC_CONTAINER_SEEK_MODE_TIME)
   {
      SEEK(p_ctx, module->track->format->extradata_size);
      module->mid_frame = 0;
      module->frame_read = 0;
      return STREAM_STATUS(p_ctx);
   }
   else
      return VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION;
}
