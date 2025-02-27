
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int litProbs; int reps; int posAlignEncoder; int posEncoders; int isRepG2; int isRepG1; int isRepG0; int isRep; int * posSlotEncoder; int * isRep0Long; int * isMatch; int state; int repLenEnc; int lenEnc; } ;
struct TYPE_4__ {int lclp; int litProbs; int reps; int posAlignEncoder; int posEncoders; int isRepG2; int isRepG1; int isRepG0; int isRep; int * posSlotEncoder; int * isRep0Long; int * isMatch; int state; int repLenEnc; int lenEnc; TYPE_1__ saveState; } ;
typedef TYPE_1__ CSaveState ;
typedef int CLzmaProb ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_2__ CLzmaEnc ;


 int kNumLenToPosStates ;
 int kNumStates ;
 int memcpy (int ,int ,int) ;

void LzmaEnc_RestoreState(CLzmaEncHandle pp)
{
  CLzmaEnc *dest = (CLzmaEnc *)pp;
  const CSaveState *p = &dest->saveState;
  int i;
  dest->lenEnc = p->lenEnc;
  dest->repLenEnc = p->repLenEnc;
  dest->state = p->state;

  for (i = 0; i < kNumStates; i++)
  {
    memcpy(dest->isMatch[i], p->isMatch[i], sizeof(p->isMatch[i]));
    memcpy(dest->isRep0Long[i], p->isRep0Long[i], sizeof(p->isRep0Long[i]));
  }
  for (i = 0; i < kNumLenToPosStates; i++)
    memcpy(dest->posSlotEncoder[i], p->posSlotEncoder[i], sizeof(p->posSlotEncoder[i]));
  memcpy(dest->isRep, p->isRep, sizeof(p->isRep));
  memcpy(dest->isRepG0, p->isRepG0, sizeof(p->isRepG0));
  memcpy(dest->isRepG1, p->isRepG1, sizeof(p->isRepG1));
  memcpy(dest->isRepG2, p->isRepG2, sizeof(p->isRepG2));
  memcpy(dest->posEncoders, p->posEncoders, sizeof(p->posEncoders));
  memcpy(dest->posAlignEncoder, p->posAlignEncoder, sizeof(p->posAlignEncoder));
  memcpy(dest->reps, p->reps, sizeof(p->reps));
  memcpy(dest->litProbs, p->litProbs, (0x300 << dest->lclp) * sizeof(CLzmaProb));
}
