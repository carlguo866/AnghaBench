
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {TYPE_4__* format; TYPE_3__* priv; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_18__ {TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_19__ {size_t current_track; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_16__ {scalar_t__ es_type; } ;
struct TYPE_15__ {TYPE_2__* module; } ;
struct TYPE_14__ {int fourcc; } ;
struct TYPE_13__ {TYPE_7__* module; } ;


 int MP4_BOX_TYPE_SOUN ;
 int MP4_BOX_TYPE_VIDE ;
 scalar_t__ VC_CONTAINER_ES_TYPE_AUDIO ;
 scalar_t__ VC_CONTAINER_ES_TYPE_SUBPICTURE ;
 scalar_t__ VC_CONTAINER_ES_TYPE_VIDEO ;
 int VC_CONTAINER_SUCCESS ;
 int WRITE_U24 (TYPE_6__*,int ,char*) ;
 int WRITE_U32 (TYPE_6__*,int,char*) ;
 int WRITE_U8 (TYPE_6__*,int ,char*) ;
 int mp4_write_box_extended (TYPE_6__*,int ,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_stsd( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;

   WRITE_U8(p_ctx, 0, "version");
   WRITE_U24(p_ctx, 0, "flags");

   WRITE_U32(p_ctx, 1, "entry_count");

   if(track->format->es_type == VC_CONTAINER_ES_TYPE_VIDEO)
      status = mp4_write_box_extended(p_ctx, MP4_BOX_TYPE_VIDE, track->priv->module->fourcc);
   else if(track->format->es_type == VC_CONTAINER_ES_TYPE_AUDIO)
      status = mp4_write_box_extended(p_ctx, MP4_BOX_TYPE_SOUN, track->priv->module->fourcc);





   return status;
}
