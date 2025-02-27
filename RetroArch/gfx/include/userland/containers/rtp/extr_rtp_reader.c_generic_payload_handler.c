
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_TRACK_T ;
struct TYPE_9__ {int payload; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {int buffer_size; int size; int data; } ;
typedef TYPE_4__ VC_CONTAINER_PACKET_T ;
typedef int VC_CONTAINER_BITS_T ;
struct TYPE_7__ {TYPE_3__* module; } ;


 int BITS_BYTES_AVAILABLE (int *,int *) ;
 int BITS_COPY_BYTES (int *,int *,int,int ,char*) ;
 int BITS_INVALIDATE (int *,int *) ;
 int BITS_SKIP_BYTES (int *,int *,int,char*) ;
 int VC_CONTAINER_PARAM_UNUSED (int *) ;
 int VC_CONTAINER_READ_FLAG_INFO ;
 int VC_CONTAINER_READ_FLAG_SKIP ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T generic_payload_handler(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      VC_CONTAINER_PACKET_T *p_packet,
      uint32_t flags)
{
   VC_CONTAINER_TRACK_MODULE_T *t_module = track->priv->module;
   VC_CONTAINER_BITS_T *payload = &t_module->payload;
   uint32_t size;

   VC_CONTAINER_PARAM_UNUSED(p_ctx);

   if (!p_packet)
   {

      BITS_INVALIDATE(p_ctx, payload);
      return VC_CONTAINER_SUCCESS;
   }


   size = BITS_BYTES_AVAILABLE(p_ctx, payload);

   if (flags & VC_CONTAINER_READ_FLAG_SKIP)
      BITS_SKIP_BYTES(p_ctx, payload, size, "Packet data");
   else {
      if (!(flags & VC_CONTAINER_READ_FLAG_INFO))
      {
         if (size > p_packet->buffer_size)
            size = p_packet->buffer_size;

         BITS_COPY_BYTES(p_ctx, payload, size, p_packet->data, "Packet data");
      }
      p_packet->size = size;
   }

   return VC_CONTAINER_SUCCESS;
}
