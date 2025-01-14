
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int int64_t ;
struct TYPE_27__ {scalar_t__ offset; int pts; } ;
struct TYPE_25__ {TYPE_9__ state; TYPE_3__* sample_table; } ;
typedef TYPE_6__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_26__ {size_t tracks_num; TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef TYPE_7__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
typedef int * VC_CONTAINER_SEEK_MODE_T ;
typedef int VC_CONTAINER_SEEK_FLAGS_T ;
typedef int VC_CONTAINER_MODULE_T ;
struct TYPE_24__ {TYPE_4__* priv; TYPE_2__* format; scalar_t__ is_enabled; } ;
struct TYPE_23__ {TYPE_6__* module; } ;
struct TYPE_22__ {size_t entries; } ;
struct TYPE_21__ {scalar_t__ es_type; } ;
struct TYPE_20__ {int * module; } ;


 size_t MP4_SAMPLE_TABLE_STSS ;
 scalar_t__ VC_CONTAINER_ES_TYPE_VIDEO ;
 int VC_CONTAINER_PARAM_UNUSED (int *) ;
 int VC_CONTAINER_SEEK_FLAG_FORWARD ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 size_t _READ_U32 (TYPE_7__*) ;
 int memset (TYPE_9__*,int ,int) ;
 size_t mp4_find_sample (TYPE_7__*,size_t,TYPE_9__*,int ,scalar_t__*) ;
 int mp4_read_sample_header (TYPE_7__*,size_t,TYPE_9__*) ;
 scalar_t__ mp4_seek_sample_table (TYPE_7__*,TYPE_6__*,TYPE_9__*,size_t) ;
 scalar_t__ mp4_seek_track (TYPE_7__*,size_t,TYPE_9__*,size_t) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_reader_seek(VC_CONTAINER_T *p_ctx,
   int64_t *offset, VC_CONTAINER_SEEK_MODE_T mode, VC_CONTAINER_SEEK_FLAGS_T flags)
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_MODULE_T *track_module;
   VC_CONTAINER_STATUS_T status;
   uint32_t i, track, sample, prev_sample, next_sample;
   int64_t seek_time = *offset;
   VC_CONTAINER_PARAM_UNUSED(module);
   VC_CONTAINER_PARAM_UNUSED(mode);


   for(i = 0; i < p_ctx->tracks_num; i++)
      memset(&p_ctx->tracks[i]->priv->module->state, 0, sizeof(p_ctx->tracks[i]->priv->module->state));


   if(!*offset)
   {

      for(i = 0; i < p_ctx->tracks_num; i++)
      {

        mp4_read_sample_header(p_ctx, i, &p_ctx->tracks[i]->priv->module->state);
      }
      return VC_CONTAINER_SUCCESS;
   }


   for(track = 0; track < p_ctx->tracks_num; track++)
      if(p_ctx->tracks[track]->is_enabled &&
         p_ctx->tracks[track]->format->es_type == VC_CONTAINER_ES_TYPE_VIDEO) break;
   if(track == p_ctx->tracks_num) goto seek_time_found;
   track_module = p_ctx->tracks[track]->priv->module;


   sample = mp4_find_sample( p_ctx, track, &track_module->state, seek_time, &status );
   if(status != VC_CONTAINER_SUCCESS) goto seek_time_found;


   status = mp4_seek_sample_table( p_ctx, track_module, &track_module->state, MP4_SAMPLE_TABLE_STSS );
   if(status != VC_CONTAINER_SUCCESS) goto seek_time_found;
   for(i = 0, prev_sample = 0, next_sample = 0;
       i < track_module->sample_table[MP4_SAMPLE_TABLE_STSS].entries; i++)
   {
      next_sample = _READ_U32(p_ctx) - 1;
      if(next_sample > sample)
      {
         sample = (flags & VC_CONTAINER_SEEK_FLAG_FORWARD) ? next_sample : prev_sample;
         break;
      }
      prev_sample = next_sample;
   }


   status = mp4_seek_track(p_ctx, track, &track_module->state, sample);
   if(status != VC_CONTAINER_SUCCESS) goto seek_time_found;
   seek_time = track_module->state.pts;

 seek_time_found:

   for(i = 0; i < p_ctx->tracks_num; i++)
   {
      uint32_t sample;
      track_module = p_ctx->tracks[i]->priv->module;
      if(track_module->state.offset) continue;
      sample = mp4_find_sample( p_ctx, i, &track_module->state, seek_time, &status );
      if(status != VC_CONTAINER_SUCCESS) return status;

      status = mp4_seek_track(p_ctx, i, &track_module->state, sample);
   }

   *offset = seek_time;
   return VC_CONTAINER_SUCCESS;
}
