
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* Read ) (TYPE_1__*,int *,size_t*) ;} ;
typedef int SRes ;
typedef TYPE_1__ ISeqInStream ;


 int RINOK (int ) ;
 int SZ_ERROR_INPUT_EOF ;
 int SZ_OK ;
 int stub1 (TYPE_1__*,int *,size_t*) ;

SRes SeqInStream_Readuint8_t(ISeqInStream *stream, uint8_t *buf)
{
   size_t processed = 1;
   RINOK(stream->Read(stream, buf, &processed));
   return (processed == 1) ? SZ_OK : SZ_ERROR_INPUT_EOF;
}
