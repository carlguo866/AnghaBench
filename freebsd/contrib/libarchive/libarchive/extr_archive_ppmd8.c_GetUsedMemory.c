
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_3__ {int* Stamps; int Size; scalar_t__ Text; scalar_t__ UnitsStart; scalar_t__ LoUnit; scalar_t__ HiUnit; } ;
typedef TYPE_1__ CPpmd8 ;


 int I2U (unsigned int) ;
 unsigned int PPMD_NUM_INDEXES ;
 int U2B (int) ;

__attribute__((used)) static UInt32 GetUsedMemory(const CPpmd8 *p)
{
  UInt32 v = 0;
  unsigned i;
  for (i = 0; i < PPMD_NUM_INDEXES; i++)
    v += p->Stamps[i] * I2U(i);
  return p->Size - (UInt32)(p->HiUnit - p->LoUnit) - (UInt32)(p->UnitsStart - p->Text) - U2B(v);
}
