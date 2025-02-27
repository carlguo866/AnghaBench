
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {int numProbs; int * probs; } ;
struct TYPE_8__ {scalar_t__ (* Alloc ) (TYPE_1__*,int) ;} ;
typedef int SRes ;
typedef TYPE_1__ ISzAlloc ;
typedef int CLzmaProps ;
typedef TYPE_2__ CLzmaDec ;


 int LzmaDec_FreeProbs (TYPE_2__*,TYPE_1__*) ;
 int LzmaProps_GetNumProbs (int const*) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 scalar_t__ stub1 (TYPE_1__*,int) ;

__attribute__((used)) static SRes LzmaDec_AllocateProbs2(CLzmaDec *p, const CLzmaProps *propNew, ISzAlloc *alloc)
{
   uint32_t numProbs = LzmaProps_GetNumProbs(propNew);
   if (p->probs == 0 || numProbs != p->numProbs)
   {
      LzmaDec_FreeProbs(p, alloc);
      p->probs = (uint16_t *)alloc->Alloc(alloc, numProbs * sizeof(uint16_t));
      p->numProbs = numProbs;
      if (p->probs == 0)
         return SZ_ERROR_MEM;
   }
   return SZ_OK;
}
