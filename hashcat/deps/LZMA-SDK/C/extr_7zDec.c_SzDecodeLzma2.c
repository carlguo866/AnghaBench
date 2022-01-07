
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UInt64 ;
struct TYPE_8__ {scalar_t__ dicPos; scalar_t__ dicBufSize; int * dic; } ;
struct TYPE_9__ {TYPE_1__ decoder; } ;
typedef scalar_t__ SizeT ;
typedef scalar_t__ SRes ;
typedef int ISzAllocPtr ;
typedef int ILookInStream ;
typedef scalar_t__ ELzmaStatus ;
typedef TYPE_2__ CLzma2Dec ;
typedef int Byte ;


 scalar_t__ ILookInStream_Look (int *,void const**,size_t*) ;
 scalar_t__ ILookInStream_Skip (int *,scalar_t__) ;
 int LZMA_FINISH_END ;
 scalar_t__ LZMA_STATUS_FINISHED_WITH_MARK ;
 int Lzma2Dec_AllocateProbs (TYPE_2__*,int const,int ) ;
 int Lzma2Dec_Construct (TYPE_2__*) ;
 scalar_t__ Lzma2Dec_DecodeToDic (TYPE_2__*,scalar_t__,int const*,scalar_t__*,int ,scalar_t__*) ;
 int Lzma2Dec_FreeProbs (TYPE_2__*,int ) ;
 int Lzma2Dec_Init (TYPE_2__*) ;
 int RINOK (int ) ;
 scalar_t__ SZ_ERROR_DATA ;
 scalar_t__ SZ_OK ;

__attribute__((used)) static SRes SzDecodeLzma2(const Byte *props, unsigned propsSize, UInt64 inSize, ILookInStream *inStream,
    Byte *outBuffer, SizeT outSize, ISzAllocPtr allocMain)
{
  CLzma2Dec state;
  SRes res = SZ_OK;

  Lzma2Dec_Construct(&state);
  if (propsSize != 1)
    return SZ_ERROR_DATA;
  RINOK(Lzma2Dec_AllocateProbs(&state, props[0], allocMain));
  state.decoder.dic = outBuffer;
  state.decoder.dicBufSize = outSize;
  Lzma2Dec_Init(&state);

  for (;;)
  {
    const void *inBuf = ((void*)0);
    size_t lookahead = (1 << 18);
    if (lookahead > inSize)
      lookahead = (size_t)inSize;
    res = ILookInStream_Look(inStream, &inBuf, &lookahead);
    if (res != SZ_OK)
      break;

    {
      SizeT inProcessed = (SizeT)lookahead, dicPos = state.decoder.dicPos;
      ELzmaStatus status;
      res = Lzma2Dec_DecodeToDic(&state, outSize, (const Byte *)inBuf, &inProcessed, LZMA_FINISH_END, &status);
      lookahead -= inProcessed;
      inSize -= inProcessed;
      if (res != SZ_OK)
        break;

      if (status == LZMA_STATUS_FINISHED_WITH_MARK)
      {
        if (outSize != state.decoder.dicPos || inSize != 0)
          res = SZ_ERROR_DATA;
        break;
      }

      if (inProcessed == 0 && dicPos == state.decoder.dicPos)
      {
        res = SZ_ERROR_DATA;
        break;
      }

      res = ILookInStream_Skip(inStream, inProcessed);
      if (res != SZ_OK)
        break;
    }
  }

  Lzma2Dec_FreeProbs(&state, allocMain);
  return res;
}
