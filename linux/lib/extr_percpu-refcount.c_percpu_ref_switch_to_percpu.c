
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_ref {int force_atomic; } ;


 int __percpu_ref_switch_mode (struct percpu_ref*,int *) ;
 int percpu_ref_switch_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void percpu_ref_switch_to_percpu(struct percpu_ref *ref)
{
 unsigned long flags;

 spin_lock_irqsave(&percpu_ref_switch_lock, flags);

 ref->force_atomic = 0;
 __percpu_ref_switch_mode(ref, ((void*)0));

 spin_unlock_irqrestore(&percpu_ref_switch_lock, flags);
}
