
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ NumUnpackStreams; scalar_t__ UnpackCRC; scalar_t__ UnpackCRCDefined; scalar_t__ NumPackStreams; scalar_t__ NumBindPairs; scalar_t__ NumCoders; scalar_t__ UnpackSizes; scalar_t__ PackStreams; scalar_t__ BindPairs; scalar_t__ Coders; } ;
typedef TYPE_1__ CSzFolder ;



void SzFolder_Init(CSzFolder *p)
{
  p->Coders = 0;
  p->BindPairs = 0;
  p->PackStreams = 0;
  p->UnpackSizes = 0;
  p->NumCoders = 0;
  p->NumBindPairs = 0;
  p->NumPackStreams = 0;
  p->UnpackCRCDefined = 0;
  p->UnpackCRC = 0;
  p->NumUnpackStreams = 0;
}
