
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int vmrs_fpscr (int) ;
 int vmsr_fpscr (int) ;

inline int
fesetexceptflag(const fexcept_t *__flagp, int __excepts)
{
 fexcept_t __fpsr;

 vmrs_fpscr(__fpsr);
 __fpsr &= ~__excepts;
 __fpsr |= *__flagp & __excepts;
 vmsr_fpscr(__fpsr);
 return (0);
}
