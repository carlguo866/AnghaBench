
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cr2; } ;
typedef TYPE_1__ x86_saved_state64_t ;
struct TYPE_6__ {scalar_t__ cr2; } ;
typedef TYPE_2__ x86_saved_state32_t ;
typedef scalar_t__ user_addr_t ;
typedef int thread_t ;
typedef int kern_return_t ;


 int EXC_BAD_ACCESS ;
 TYPE_2__* USER_REGS32 (int ) ;
 TYPE_1__* USER_REGS64 (int ) ;
 int current_thread () ;
 int i386_exception (int ,int ,scalar_t__) ;
 int pal_dbg_page_fault (int ,scalar_t__,int ) ;
 scalar_t__ thread_is_64bit_addr (int ) ;

__attribute__((used)) static inline void
user_page_fault_continue(
    kern_return_t kr)
{
 thread_t thread = current_thread();
 user_addr_t vaddr;

 if (thread_is_64bit_addr(thread)) {
  x86_saved_state64_t *uregs;

  uregs = USER_REGS64(thread);

  vaddr = (user_addr_t)uregs->cr2;
 } else {
         x86_saved_state32_t *uregs;

  uregs = USER_REGS32(thread);

  vaddr = uregs->cr2;
 }



 pal_dbg_page_fault( thread, vaddr, kr );

 i386_exception(EXC_BAD_ACCESS, kr, vaddr);

}
