
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {int Low; int Range; int Bottom; int Code; TYPE_1__* Stream; } ;
struct TYPE_4__ {int (* Read ) (void*) ;} ;
typedef TYPE_2__ CPpmd7z_RangeDec ;


 int kTopValue ;
 int stub1 (void*) ;

__attribute__((used)) static void Range_Normalize(CPpmd7z_RangeDec *p)
{
  while (1)
  {
    if((p->Low ^ (p->Low + p->Range)) >= kTopValue)
    {
      if(p->Range >= p->Bottom)
        break;
      else
        p->Range = ((uint32_t)(-(int32_t)p->Low)) & (p->Bottom - 1);
    }
    p->Code = (p->Code << 8) | p->Stream->Read((void *)p->Stream);
    p->Range <<= 8;
    p->Low <<= 8;
  }
}
