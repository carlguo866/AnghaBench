
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* signal; } ;
struct TYPE_5__ {TYPE_1__* rlim; } ;
struct TYPE_4__ {unsigned long rlim_cur; } ;


 unsigned long MAX_GAP ;
 unsigned long MIN_GAP ;
 unsigned long PAGE_MASK ;
 size_t RLIMIT_STACK ;
 unsigned long STACK_TOP ;
 TYPE_3__* current ;
 unsigned long mmap_rnd () ;
 unsigned long stack_maxrandom_size () ;

__attribute__((used)) static inline unsigned long mmap_base(void)
{
 unsigned long gap = current->signal->rlim[RLIMIT_STACK].rlim_cur;

 if (gap < MIN_GAP)
  gap = MIN_GAP;
 else if (gap > MAX_GAP)
  gap = MAX_GAP;
 gap &= PAGE_MASK;
 return STACK_TOP - stack_maxrandom_size() - mmap_rnd() - gap;
}
