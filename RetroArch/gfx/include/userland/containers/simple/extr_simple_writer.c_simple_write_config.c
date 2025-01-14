
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* format; TYPE_2__* priv; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_T ;
struct TYPE_15__ {TYPE_4__** tracks; } ;
typedef TYPE_5__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_16__ {unsigned int track; int flags; int pts; int data; scalar_t__ size; } ;
typedef TYPE_6__ VC_CONTAINER_PACKET_T ;
struct TYPE_13__ {int extradata; scalar_t__ extradata_size; } ;
struct TYPE_12__ {TYPE_1__* module; } ;
struct TYPE_11__ {int config_done; } ;


 int VC_CONTAINER_PACKET_FLAG_CONFIG ;
 int VC_CONTAINER_SUCCESS ;
 int VC_CONTAINER_TIME_UNKNOWN ;
 int simple_writer_write (TYPE_5__*,TYPE_6__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T simple_write_config( VC_CONTAINER_T *ctx,
   unsigned int track_num, VC_CONTAINER_PACKET_T *pkt)
{
   VC_CONTAINER_TRACK_T *track = ctx->tracks[track_num];
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_PACKET_T packet;

   track->priv->module->config_done = 1;

   if (track->format->extradata_size)
   {
      packet.size = track->format->extradata_size;
      packet.data = track->format->extradata;
      packet.track = track_num;
      packet.pts = pkt ? pkt->pts : VC_CONTAINER_TIME_UNKNOWN;
      packet.flags = 0;
      packet.flags |= VC_CONTAINER_PACKET_FLAG_CONFIG;

      status = simple_writer_write(ctx, &packet);
   }

   return status;
}
