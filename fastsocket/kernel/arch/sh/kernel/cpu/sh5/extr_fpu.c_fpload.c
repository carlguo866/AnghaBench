
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_hard_struct {int dummy; } ;



__attribute__((used)) static inline void
fpload(struct sh_fpu_hard_struct *fpregs)
{
 asm volatile("fld.p     %0, (0*8), fp0\n\t"
       "fld.p     %0, (1*8), fp2\n\t"
       "fld.p     %0, (2*8), fp4\n\t"
       "fld.p     %0, (3*8), fp6\n\t"
       "fld.p     %0, (4*8), fp8\n\t"
       "fld.p     %0, (5*8), fp10\n\t"
       "fld.p     %0, (6*8), fp12\n\t"
       "fld.p     %0, (7*8), fp14\n\t"
       "fld.p     %0, (8*8), fp16\n\t"
       "fld.p     %0, (9*8), fp18\n\t"
       "fld.p     %0, (10*8), fp20\n\t"
       "fld.p     %0, (11*8), fp22\n\t"
       "fld.p     %0, (12*8), fp24\n\t"
       "fld.p     %0, (13*8), fp26\n\t"
       "fld.p     %0, (14*8), fp28\n\t"
       "fld.p     %0, (15*8), fp30\n\t"
       "fld.p     %0, (16*8), fp32\n\t"
       "fld.p     %0, (17*8), fp34\n\t"
       "fld.p     %0, (18*8), fp36\n\t"
       "fld.p     %0, (19*8), fp38\n\t"
       "fld.p     %0, (20*8), fp40\n\t"
       "fld.p     %0, (21*8), fp42\n\t"
       "fld.p     %0, (22*8), fp44\n\t"
       "fld.p     %0, (23*8), fp46\n\t"
       "fld.p     %0, (24*8), fp48\n\t"
       "fld.p     %0, (25*8), fp50\n\t"
       "fld.p     %0, (26*8), fp52\n\t"
       "fld.p     %0, (27*8), fp54\n\t"
       "fld.p     %0, (28*8), fp56\n\t"
       "fld.p     %0, (29*8), fp58\n\t"
       "fld.p     %0, (30*8), fp60\n\t"

       "fld.s     %0, (32*8), fr63\n\t"
       "fputscr   fr63\n\t"

       "fld.p     %0, (31*8), fp62\n\t"
  :
  : "r" (fpregs) );
}
