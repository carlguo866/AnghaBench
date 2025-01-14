
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UInt32 ;
typedef unsigned int UInt16 ;
struct TYPE_10__ {int NumStats; int SummFreq; int Flags; } ;
struct TYPE_9__ {scalar_t__ NumStats; } ;
struct TYPE_7__ {unsigned int Summ; unsigned int Shift; } ;
struct TYPE_8__ {int* NS2Indx; TYPE_1__ DummySee; TYPE_4__* MinContext; TYPE_1__** See; } ;
typedef TYPE_1__ CPpmd_See ;
typedef TYPE_2__ CPpmd8 ;


 TYPE_3__* SUFFIX (TYPE_4__*) ;

CPpmd_See *Ppmd8_MakeEscFreq(CPpmd8 *p, unsigned numMasked1, UInt32 *escFreq)
{
  CPpmd_See *see;
  if (p->MinContext->NumStats != 0xFF)
  {
    see = p->See[p->NS2Indx[p->MinContext->NumStats + 2] - 3] +
        (p->MinContext->SummFreq > 11 * ((unsigned)p->MinContext->NumStats + 1)) +
        2 * (2 * (unsigned)p->MinContext->NumStats <
        ((unsigned)SUFFIX(p->MinContext)->NumStats + numMasked1)) +
        p->MinContext->Flags;
    {
      unsigned r = (see->Summ >> see->Shift);
      see->Summ = (UInt16)(see->Summ - r);
      *escFreq = r + (r == 0);
    }
  }
  else
  {
    see = &p->DummySee;
    *escFreq = 1;
  }
  return see;
}
