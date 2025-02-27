
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ WebPMuxError ;
struct TYPE_6__ {int loop_count; int bgcolor; } ;
typedef TYPE_1__ WebPMuxAnimParams ;
typedef int WebPMux ;
struct TYPE_7__ {int member_1; int * member_0; } ;
typedef TYPE_2__ WebPData ;
struct TYPE_8__ {int tag; } ;


 int ANIM_CHUNK_SIZE ;
 size_t IDX_ANIM ;
 int MAX_LOOP_COUNT ;
 scalar_t__ MuxDeleteAllNamedData (int *,int ) ;
 scalar_t__ MuxSet (int *,int ,TYPE_2__ const*,int) ;
 int PutLE16 (int *,int ) ;
 int PutLE32 (int *,int ) ;
 scalar_t__ WEBP_MUX_INVALID_ARGUMENT ;
 scalar_t__ WEBP_MUX_NOT_FOUND ;
 scalar_t__ WEBP_MUX_OK ;
 TYPE_3__* kChunks ;

WebPMuxError WebPMuxSetAnimationParams(WebPMux* mux,
                                       const WebPMuxAnimParams* params) {
  WebPMuxError err;
  uint8_t data[ANIM_CHUNK_SIZE];
  const WebPData anim = { data, ANIM_CHUNK_SIZE };

  if (mux == ((void*)0) || params == ((void*)0)) return WEBP_MUX_INVALID_ARGUMENT;
  if (params->loop_count < 0 || params->loop_count >= MAX_LOOP_COUNT) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }


  err = MuxDeleteAllNamedData(mux, kChunks[IDX_ANIM].tag);
  if (err != WEBP_MUX_OK && err != WEBP_MUX_NOT_FOUND) return err;


  PutLE32(data, params->bgcolor);
  PutLE16(data + 4, params->loop_count);
  return MuxSet(mux, kChunks[IDX_ANIM].tag, &anim, 1);
}
