
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_8__ {TYPE_3__* sie_block; } ;
struct TYPE_5__ {int instruction_lctl; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_1__ stat; } ;
struct TYPE_6__ {int mask; } ;
struct TYPE_7__ {int ipa; int* gcr; TYPE_2__ gpsw; } ;


 int KVM_REQ_TLB_FLUSH ;
 int PGM_PRIVILEGED_OP ;
 int PGM_SPECIFICATION ;
 int PSW_MASK_PSTATE ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int,int,int) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_s390_get_base_disp_rs (struct kvm_vcpu*,int *) ;
 int kvm_s390_inject_prog_cond (struct kvm_vcpu*,int) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int read_guest (struct kvm_vcpu*,int,int ,int*,int) ;
 int trace_kvm_s390_handle_lctl (struct kvm_vcpu*,int ,int,int,int) ;

int kvm_s390_handle_lctl(struct kvm_vcpu *vcpu)
{
 int reg1 = (vcpu->arch.sie_block->ipa & 0x00f0) >> 4;
 int reg3 = vcpu->arch.sie_block->ipa & 0x000f;
 int reg, rc, nr_regs;
 u32 ctl_array[16];
 u64 ga;
 u8 ar;

 vcpu->stat.instruction_lctl++;

 if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
  return kvm_s390_inject_program_int(vcpu, PGM_PRIVILEGED_OP);

 ga = kvm_s390_get_base_disp_rs(vcpu, &ar);

 if (ga & 3)
  return kvm_s390_inject_program_int(vcpu, PGM_SPECIFICATION);

 VCPU_EVENT(vcpu, 4, "LCTL: r1:%d, r3:%d, addr: 0x%llx", reg1, reg3, ga);
 trace_kvm_s390_handle_lctl(vcpu, 0, reg1, reg3, ga);

 nr_regs = ((reg3 - reg1) & 0xf) + 1;
 rc = read_guest(vcpu, ga, ar, ctl_array, nr_regs * sizeof(u32));
 if (rc)
  return kvm_s390_inject_prog_cond(vcpu, rc);
 reg = reg1;
 nr_regs = 0;
 do {
  vcpu->arch.sie_block->gcr[reg] &= 0xffffffff00000000ul;
  vcpu->arch.sie_block->gcr[reg] |= ctl_array[nr_regs++];
  if (reg == reg3)
   break;
  reg = (reg + 1) % 16;
 } while (1);
 kvm_make_request(KVM_REQ_TLB_FLUSH, vcpu);
 return 0;
}
