
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t k; size_t d; } ;
typedef TYPE_1__ ZDICT_fastCover_params_t ;
typedef size_t U32 ;
struct TYPE_11__ {size_t const nbDmers; scalar_t__ samples; } ;
struct TYPE_10__ {scalar_t__ score; scalar_t__ begin; scalar_t__ end; } ;
typedef TYPE_2__ FASTCOVER_segment_t ;
typedef TYPE_3__ FASTCOVER_ctx_t ;
typedef int BYTE ;


 int DISPLAYLEVEL (int,char*,...) ;
 int DISPLAYUPDATE (int,char*,size_t) ;
 TYPE_2__ FASTCOVER_selectSegment (TYPE_3__ const*,size_t*,size_t const,size_t const,TYPE_1__) ;
 size_t MAX (int,size_t) ;
 size_t MIN (scalar_t__,size_t) ;
 int memcpy (int * const,scalar_t__,size_t) ;

__attribute__((used)) static size_t FASTCOVER_buildDictionary(const FASTCOVER_ctx_t *ctx, U32 *freqs,
                                    void *dictBuffer,
                                    size_t dictBufferCapacity,
                                    ZDICT_fastCover_params_t parameters){
  BYTE *const dict = (BYTE *)dictBuffer;
  size_t tail = dictBufferCapacity;



  const U32 epochs = MAX(1, (U32)(dictBufferCapacity / parameters.k));
  const U32 epochSize = (U32)(ctx->nbDmers / epochs);
  size_t epoch;
  DISPLAYLEVEL(2, "Breaking content into %u epochs of size %u\n", epochs,
               epochSize);



  for (epoch = 0; tail > 0; epoch = (epoch + 1) % epochs) {
    const U32 epochBegin = (U32)(epoch * epochSize);
    const U32 epochEnd = epochBegin + epochSize;
    size_t segmentSize;

    FASTCOVER_segment_t segment = FASTCOVER_selectSegment(
        ctx, freqs, epochBegin, epochEnd, parameters);


    if (segment.score == 0) {
      break;
    }


    segmentSize = MIN(segment.end - segment.begin + parameters.d - 1, tail);
    if (segmentSize < parameters.d) {
      break;
    }




    tail -= segmentSize;
    memcpy(dict + tail, ctx->samples + segment.begin, segmentSize);
    DISPLAYUPDATE(
        2, "\r%u%%       ",
        (U32)(((dictBufferCapacity - tail) * 100) / dictBufferCapacity));
  }
  DISPLAYLEVEL(2, "\r%79s\r", "");
  return tail;
}
