
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t dicBufSize; int * dic; } ;
struct TYPE_7__ {TYPE_1__ decoder; } ;
struct TYPE_9__ {TYPE_2__ decoder; scalar_t__ outBufMode; } ;
struct TYPE_8__ {scalar_t__ p; } ;
typedef int SRes ;
typedef TYPE_3__ IStateCoder ;
typedef TYPE_4__ CLzma2Dec_Spec ;
typedef int Byte ;


 int SZ_ERROR_FAIL ;
 int SZ_OK ;

__attribute__((used)) static SRes Lzma2State_ResetOutBuf(IStateCoder *p, Byte *outBuf, size_t outBufSize)
{
  CLzma2Dec_Spec *spec = (CLzma2Dec_Spec *)p->p;
  if ((spec->outBufMode && !outBuf) || (!spec->outBufMode && outBuf))
    return SZ_ERROR_FAIL;
  if (outBuf)
  {
    spec->decoder.decoder.dic = outBuf;
    spec->decoder.decoder.dicBufSize = outBufSize;
  }
  return SZ_OK;
}
