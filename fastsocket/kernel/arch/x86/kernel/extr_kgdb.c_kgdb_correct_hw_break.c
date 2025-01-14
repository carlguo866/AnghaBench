
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int type; unsigned long addr; scalar_t__ enabled; } ;


 TYPE_1__* breakinfo ;
 int get_debugreg (unsigned long,int) ;
 int set_debugreg (unsigned long,int) ;

__attribute__((used)) static void kgdb_correct_hw_break(void)
{
 unsigned long dr7;
 int correctit = 0;
 int breakbit;
 int breakno;

 get_debugreg(dr7, 7);
 for (breakno = 0; breakno < 4; breakno++) {
  breakbit = 2 << (breakno << 1);
  if (!(dr7 & breakbit) && breakinfo[breakno].enabled) {
   correctit = 1;
   dr7 |= breakbit;
   dr7 &= ~(0xf0000 << (breakno << 2));
   dr7 |= ((breakinfo[breakno].len << 2) |
     breakinfo[breakno].type) <<
          ((breakno << 2) + 16);
   if (breakno >= 0 && breakno <= 3)
    set_debugreg(breakinfo[breakno].addr, breakno);

  } else {
   if ((dr7 & breakbit) && !breakinfo[breakno].enabled) {
    correctit = 1;
    dr7 &= ~breakbit;
    dr7 &= ~(0xf0000 << (breakno << 2));
   }
  }
 }
 if (correctit)
  set_debugreg(dr7, 7);
}
