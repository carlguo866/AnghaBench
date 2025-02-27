
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int tf_spsr; void** tf_x; void* tf_elr; void* tf_sp; } ;
struct thread {struct trapframe* td_frame; } ;
struct TYPE_3__ {scalar_t__ ss_size; scalar_t__ ss_sp; } ;
typedef TYPE_1__ stack_t ;
typedef void* register_t ;


 int PSR_M_32 ;
 void* STACKALIGN (scalar_t__) ;

void
cpu_set_upcall(struct thread *td, void (*entry)(void *), void *arg,
 stack_t *stack)
{
 struct trapframe *tf = td->td_frame;


 if (td->td_frame->tf_spsr & PSR_M_32)
  tf->tf_x[13] = STACKALIGN((uintptr_t)stack->ss_sp + stack->ss_size);
 else
  tf->tf_sp = STACKALIGN((uintptr_t)stack->ss_sp + stack->ss_size);
 tf->tf_elr = (register_t)entry;
 tf->tf_x[0] = (register_t)arg;
}
