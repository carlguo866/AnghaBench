
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int dr6; int switch_db_regs; } ;
struct kvm_vcpu {int guest_debug; TYPE_4__ arch; TYPE_3__* run; } ;
struct TYPE_5__ {int dr6; int dr7; int exception; int pc; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;
struct TYPE_7__ {int exit_reason; TYPE_2__ debug; } ;


 int CPU_BASED_MOV_DR_EXITING ;
 int DB_VECTOR ;
 unsigned long DEBUG_REG_ACCESS_NUM ;
 int DEBUG_REG_ACCESS_REG (unsigned long) ;
 int DR6_BD ;
 int DR6_RTM ;
 int DR7_GD ;
 int DR_TRAP_BITS ;
 int EXIT_QUALIFICATION ;
 int GUEST_DR7 ;
 int KVM_DEBUGREG_WONT_EXIT ;
 int KVM_EXIT_DEBUG ;
 int KVM_GUESTDBG_USE_HW_BP ;
 unsigned long TYPE_MOV_FROM_DR ;
 int exec_controls_clearbit (int ,int ) ;
 scalar_t__ kvm_get_dr (struct kvm_vcpu*,int,unsigned long*) ;
 int kvm_get_linear_rip (struct kvm_vcpu*) ;
 int kvm_queue_exception (struct kvm_vcpu*,int ) ;
 int kvm_register_readl (struct kvm_vcpu*,int) ;
 int kvm_register_write (struct kvm_vcpu*,int,unsigned long) ;
 int kvm_require_cpl (struct kvm_vcpu*,int ) ;
 int kvm_require_dr (struct kvm_vcpu*,int) ;
 scalar_t__ kvm_set_dr (struct kvm_vcpu*,int,int ) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 int to_vmx (struct kvm_vcpu*) ;
 void* vmcs_readl (int ) ;

__attribute__((used)) static int handle_dr(struct kvm_vcpu *vcpu)
{
 unsigned long exit_qualification;
 int dr, dr7, reg;

 exit_qualification = vmcs_readl(EXIT_QUALIFICATION);
 dr = exit_qualification & DEBUG_REG_ACCESS_NUM;


 if (!kvm_require_dr(vcpu, dr))
  return 1;


 if (!kvm_require_cpl(vcpu, 0))
  return 1;
 dr7 = vmcs_readl(GUEST_DR7);
 if (dr7 & DR7_GD) {





  if (vcpu->guest_debug & KVM_GUESTDBG_USE_HW_BP) {
   vcpu->run->debug.arch.dr6 = vcpu->arch.dr6;
   vcpu->run->debug.arch.dr7 = dr7;
   vcpu->run->debug.arch.pc = kvm_get_linear_rip(vcpu);
   vcpu->run->debug.arch.exception = DB_VECTOR;
   vcpu->run->exit_reason = KVM_EXIT_DEBUG;
   return 0;
  } else {
   vcpu->arch.dr6 &= ~DR_TRAP_BITS;
   vcpu->arch.dr6 |= DR6_BD | DR6_RTM;
   kvm_queue_exception(vcpu, DB_VECTOR);
   return 1;
  }
 }

 if (vcpu->guest_debug == 0) {
  exec_controls_clearbit(to_vmx(vcpu), CPU_BASED_MOV_DR_EXITING);






  vcpu->arch.switch_db_regs |= KVM_DEBUGREG_WONT_EXIT;
  return 1;
 }

 reg = DEBUG_REG_ACCESS_REG(exit_qualification);
 if (exit_qualification & TYPE_MOV_FROM_DR) {
  unsigned long val;

  if (kvm_get_dr(vcpu, dr, &val))
   return 1;
  kvm_register_write(vcpu, reg, val);
 } else
  if (kvm_set_dr(vcpu, dr, kvm_register_readl(vcpu, reg)))
   return 1;

 return kvm_skip_emulated_instruction(vcpu);
}
