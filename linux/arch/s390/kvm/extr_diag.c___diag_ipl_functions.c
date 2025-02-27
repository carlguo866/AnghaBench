
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int diagnose_308; } ;
struct TYPE_8__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_6__* run; int kvm; TYPE_5__ stat; TYPE_2__ arch; } ;
struct TYPE_9__ {int* gprs; } ;
struct TYPE_10__ {TYPE_3__ regs; } ;
struct TYPE_12__ {unsigned long s390_reset_flags; int exit_reason; TYPE_4__ s; } ;
struct TYPE_7__ {int ipa; } ;


 int EOPNOTSUPP ;
 int EREMOTE ;
 int KVM_EXIT_S390_RESET ;
 unsigned long KVM_S390_RESET_CLEAR ;
 unsigned long KVM_S390_RESET_CPU_INIT ;
 unsigned long KVM_S390_RESET_IPL ;
 unsigned long KVM_S390_RESET_SUBSYSTEM ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,unsigned long) ;
 int kvm_s390_user_cpu_state_ctrl (int ) ;
 int kvm_s390_vcpu_stop (struct kvm_vcpu*) ;
 int trace_kvm_s390_request_resets (unsigned long) ;

__attribute__((used)) static int __diag_ipl_functions(struct kvm_vcpu *vcpu)
{
 unsigned int reg = vcpu->arch.sie_block->ipa & 0xf;
 unsigned long subcode = vcpu->run->s.regs.gprs[reg] & 0xffff;

 VCPU_EVENT(vcpu, 3, "diag ipl functions, subcode %lx", subcode);
 vcpu->stat.diagnose_308++;
 switch (subcode) {
 case 3:
  vcpu->run->s390_reset_flags = KVM_S390_RESET_CLEAR;
  break;
 case 4:
  vcpu->run->s390_reset_flags = 0;
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (!kvm_s390_user_cpu_state_ctrl(vcpu->kvm))
  kvm_s390_vcpu_stop(vcpu);
 vcpu->run->s390_reset_flags |= KVM_S390_RESET_SUBSYSTEM;
 vcpu->run->s390_reset_flags |= KVM_S390_RESET_IPL;
 vcpu->run->s390_reset_flags |= KVM_S390_RESET_CPU_INIT;
 vcpu->run->exit_reason = KVM_EXIT_S390_RESET;
 VCPU_EVENT(vcpu, 3, "requesting userspace resets %llx",
   vcpu->run->s390_reset_flags);
 trace_kvm_s390_request_resets(vcpu->run->s390_reset_flags);
 return -EREMOTE;
}
