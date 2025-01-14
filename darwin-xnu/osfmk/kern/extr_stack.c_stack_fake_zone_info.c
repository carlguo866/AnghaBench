
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int vm_size_t ;
typedef unsigned long long uint64_t ;
typedef int spl_t ;


 unsigned int kernel_stack_size ;
 int splsched () ;
 int splx (int ) ;
 unsigned long long stack_allocs ;
 unsigned int stack_free_count ;
 unsigned int stack_hiwat ;
 int stack_lock () ;
 unsigned int stack_total ;
 int stack_unlock () ;

void
stack_fake_zone_info(int *count,
       vm_size_t *cur_size, vm_size_t *max_size, vm_size_t *elem_size, vm_size_t *alloc_size,
       uint64_t *sum_size, int *collectable, int *exhaustable, int *caller_acct)
{
 unsigned int total, hiwat, free;
 unsigned long long all;
 spl_t s;

 s = splsched();
 stack_lock();
 all = stack_allocs;
 total = stack_total;
 hiwat = stack_hiwat;
 free = stack_free_count;
 stack_unlock();
 splx(s);

 *count = total - free;
 *cur_size = kernel_stack_size * total;
 *max_size = kernel_stack_size * hiwat;
 *elem_size = kernel_stack_size;
 *alloc_size = kernel_stack_size;
 *sum_size = all * kernel_stack_size;

 *collectable = 1;
 *exhaustable = 0;
 *caller_acct = 1;
}
