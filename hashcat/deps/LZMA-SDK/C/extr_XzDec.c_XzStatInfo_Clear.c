
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* CombinedRes_Type; void* CombinedRes; void* ProgressRes; void* ReadRes; void* DecodeRes; void* DecodingTruncated; void* DataAfterEnd; void* NumBlocks_Defined; void* NumStreams_Defined; void* UnpackSize_Defined; scalar_t__ NumBlocks; scalar_t__ NumStreams; scalar_t__ OutSize; scalar_t__ InSize; } ;
typedef TYPE_1__ CXzStatInfo ;


 void* False ;
 void* SZ_OK ;

void XzStatInfo_Clear(CXzStatInfo *p)
{
  p->InSize = 0;
  p->OutSize = 0;

  p->NumStreams = 0;
  p->NumBlocks = 0;

  p->UnpackSize_Defined = False;

  p->NumStreams_Defined = False;
  p->NumBlocks_Defined = False;
  p->DataAfterEnd = False;
  p->DecodingTruncated = False;

  p->DecodeRes = SZ_OK;
  p->ReadRes = SZ_OK;
  p->ProgressRes = SZ_OK;

  p->CombinedRes = SZ_OK;
  p->CombinedRes_Type = SZ_OK;
}
