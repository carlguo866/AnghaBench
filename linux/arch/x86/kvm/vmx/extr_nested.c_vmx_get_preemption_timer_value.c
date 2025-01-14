
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_5__ {int virtual_tsc_khz; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int ktime_t ;
struct TYPE_4__ {int preemption_timer; } ;
struct TYPE_6__ {TYPE_1__ nested; } ;


 int VMX_MISC_EMULATED_PREEMPTION_TIMER_RATE ;
 int do_div (int,int) ;
 int hrtimer_get_remaining (int *) ;
 int ktime_to_ns (int ) ;
 TYPE_3__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static u32 vmx_get_preemption_timer_value(struct kvm_vcpu *vcpu)
{
 ktime_t remaining =
  hrtimer_get_remaining(&to_vmx(vcpu)->nested.preemption_timer);
 u64 value;

 if (ktime_to_ns(remaining) <= 0)
  return 0;

 value = ktime_to_ns(remaining) * vcpu->arch.virtual_tsc_khz;
 do_div(value, 1000000);
 return value >> VMX_MISC_EMULATED_PREEMPTION_TIMER_RATE;
}
