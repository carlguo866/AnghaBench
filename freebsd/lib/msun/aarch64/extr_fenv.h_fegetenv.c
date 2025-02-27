
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int FE_ALL_EXCEPT ;
 int _ENABLE_MASK ;
 int _ROUND_MASK ;
 int _ROUND_SHIFT ;
 int __mrs_fpcr (int) ;
 int __mrs_fpsr (int) ;

inline int
fegetenv(fenv_t *__envp)
{
 fenv_t __r;

 __mrs_fpcr(__r);
 *__envp = __r & _ENABLE_MASK;

 __mrs_fpsr(__r);
 *__envp |= __r & (FE_ALL_EXCEPT | (_ROUND_MASK << _ROUND_SHIFT));

 return (0);
}
