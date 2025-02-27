
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int int64_t ;
struct TYPE_19__ {TYPE_3__* format; TYPE_2__* priv; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_T ;
struct TYPE_20__ {void* frame_duration; void* type; void* number; int codecid; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_21__ {TYPE_1__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_22__ {TYPE_4__* parsing; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {size_t extradata_size; char* extradata; } ;
struct TYPE_17__ {TYPE_5__* module; } ;
struct TYPE_16__ {TYPE_7__* module; } ;
typedef int MKV_ELEMENT_ID_T ;


 int LOG_DEBUG (TYPE_6__*,char*,int,int) ;
 int LOG_FORMAT (TYPE_6__*,char*,char*) ;
 scalar_t__ MKV_CODECID_MAX ;

 int MKV_ELEMENT_ID_LANGUAGE ;
 int MKV_ELEMENT_ID_NAME ;
 int MKV_ELEMENT_ID_TRACK_CODEC_ID ;
 int MKV_ELEMENT_ID_TRACK_CODEC_NAME ;
 int MKV_ELEMENT_ID_TRACK_CODEC_PRIVATE ;


 int MKV_MAX_STRING_SIZE ;
 size_t READ_BYTES (TYPE_6__*,char*,int) ;
 scalar_t__ STREAM_STATUS (TYPE_6__*) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ mkv_read_element_data_uint (TYPE_6__*,int,void**) ;
 int strncpy (int ,char*,scalar_t__) ;
 scalar_t__ vc_container_track_allocate_extradata (TYPE_6__*,TYPE_4__*,unsigned int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mkv_read_subelements_track_entry( VC_CONTAINER_T *p_ctx, MKV_ELEMENT_ID_T id, int64_t size )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = module->parsing;
   VC_CONTAINER_TRACK_MODULE_T *track_module = track->priv->module;
   uint64_t value;


   if( id == MKV_ELEMENT_ID_NAME ||
       id == MKV_ELEMENT_ID_LANGUAGE ||
       id == MKV_ELEMENT_ID_TRACK_CODEC_ID ||
       id == MKV_ELEMENT_ID_TRACK_CODEC_NAME )
   {
      char stringbuf[MKV_MAX_STRING_SIZE+1];

      if(size > MKV_MAX_STRING_SIZE)
      {
         LOG_DEBUG(p_ctx, "string truncated (%i>%i)", (int)size, MKV_MAX_STRING_SIZE);
         size = MKV_MAX_STRING_SIZE;
      }
      if(READ_BYTES(p_ctx, stringbuf, size) != (size_t)size)
      {

         return STREAM_STATUS(p_ctx);
      }
      stringbuf[size] = 0;

      LOG_FORMAT(p_ctx, "%s", stringbuf);

      if(id == MKV_ELEMENT_ID_TRACK_CODEC_ID)
         strncpy(track_module->codecid, stringbuf, MKV_CODECID_MAX-1);

      return VC_CONTAINER_SUCCESS;
   }


   if( id == MKV_ELEMENT_ID_TRACK_CODEC_PRIVATE )
   {
      status = vc_container_track_allocate_extradata(p_ctx, track, (unsigned int)size);
      if(status != VC_CONTAINER_SUCCESS) return status;
      track->format->extradata_size = READ_BYTES(p_ctx, track->format->extradata, size);
      return STREAM_STATUS(p_ctx);
   }


   status = mkv_read_element_data_uint(p_ctx, size, &value);
   if(status != VC_CONTAINER_SUCCESS) return status;

   switch(id)
   {
   case 129:
      track_module->number = value; break;
   case 128:
      track_module->type = value; break;
   case 130:
      track_module->frame_duration = value; break;
   default: break;
   }

   return status;
}
