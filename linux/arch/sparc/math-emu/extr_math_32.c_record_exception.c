
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FP_EX_DIVZERO ;
 int FP_EX_INEXACT ;
 int FP_EX_INVALID ;
 int FP_EX_OVERFLOW ;
 int FP_EX_UNDERFLOW ;
 long FSR_AEXC_SHIFT ;
 unsigned long FSR_CEXC_MASK ;
 long FSR_CEXC_SHIFT ;
 unsigned long FSR_TEM_MASK ;
 long FSR_TEM_SHIFT ;

__attribute__((used)) static inline int record_exception(unsigned long *pfsr, int eflag)
{
 unsigned long fsr = *pfsr;
 int would_trap;


 would_trap = (fsr & ((long)eflag << FSR_TEM_SHIFT)) != 0UL;


 if (would_trap != 0) {
  eflag &= ((fsr & FSR_TEM_MASK) >> FSR_TEM_SHIFT);
  if ((eflag & (eflag - 1)) != 0) {
   if (eflag & FP_EX_INVALID)
    eflag = FP_EX_INVALID;
   else if (eflag & FP_EX_OVERFLOW)
    eflag = FP_EX_OVERFLOW;
   else if (eflag & FP_EX_UNDERFLOW)
    eflag = FP_EX_UNDERFLOW;
   else if (eflag & FP_EX_DIVZERO)
    eflag = FP_EX_DIVZERO;
   else if (eflag & FP_EX_INEXACT)
    eflag = FP_EX_INEXACT;
  }
 }







 fsr &= ~(FSR_CEXC_MASK);
 fsr |= ((long)eflag << FSR_CEXC_SHIFT);







 if (would_trap == 0)
  fsr |= ((long)eflag << FSR_AEXC_SHIFT);


 if (would_trap != 0)
  fsr |= (1UL << 14);

 *pfsr = fsr;

 return (would_trap ? 0 : 1);
}
