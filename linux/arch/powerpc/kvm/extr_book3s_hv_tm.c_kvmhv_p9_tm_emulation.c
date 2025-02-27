
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_5__ {int msr; int srr1; int srr0; } ;
struct TYPE_8__ {int ccr; int nip; } ;
struct TYPE_7__ {int emul_inst; int hfscr; int fscr; int bescr; int orig_texasr; int texasr; TYPE_1__ shregs; TYPE_4__ regs; TYPE_2__* vcore; int ebbrr; int cfar; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_6__ {int pcr; } ;


 int BESCR_GE ;
 int BOOK3S_INTERRUPT_FAC_UNAVAIL ;
 int FSCR_EBB ;
 int FSCR_EBB_LG ;
 int FSCR_TM_LG ;
 int HFSCR_EBB ;
 int HFSCR_TM ;
 int MSR_LE ;
 int MSR_PR ;
 int MSR_TM ;
 int MSR_TM_ACTIVE (int) ;
 int MSR_TM_SUSPENDED (int) ;
 int MSR_TM_TRANSACTIONAL (int) ;
 int MSR_TS_MASK ;
 int MSR_TS_S ;
 int MSR_TS_S_LG ;
 int MSR_TS_T ;
 int PCR_ARCH_206 ;






 int RESUME_GUEST ;
 int SRR1_PROGILL ;
 int SRR1_PROGTM ;
 int TEXASR_FS ;
 int WARN_ON_ONCE (int) ;
 int copy_from_checkpoint (struct kvm_vcpu*) ;
 int copy_to_checkpoint (struct kvm_vcpu*) ;
 int emulate_tx_failure (struct kvm_vcpu*,int) ;
 int kvmppc_book3s_queue_irqprio (struct kvm_vcpu*,int ) ;
 int kvmppc_core_queue_program (struct kvm_vcpu*,int ) ;
 int kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 int sanitize_msr (int) ;

int kvmhv_p9_tm_emulation(struct kvm_vcpu *vcpu)
{
 u32 instr = vcpu->arch.emul_inst;
 u64 msr = vcpu->arch.shregs.msr;
 u64 newmsr, bescr;
 int ra, rs;

 switch (instr & 0xfc0007ff) {
 case 131:

  newmsr = vcpu->arch.shregs.srr1;

  WARN_ON_ONCE(!(MSR_TM_SUSPENDED(msr) &&
          MSR_TM_TRANSACTIONAL(newmsr) &&
          (newmsr & MSR_TM)));
  newmsr = sanitize_msr(newmsr);
  vcpu->arch.shregs.msr = newmsr;
  vcpu->arch.cfar = vcpu->arch.regs.nip - 4;
  vcpu->arch.regs.nip = vcpu->arch.shregs.srr0;
  return RESUME_GUEST;

 case 132:
  if ((msr & MSR_PR) && (vcpu->arch.vcore->pcr & PCR_ARCH_206)) {

   kvmppc_core_queue_program(vcpu, SRR1_PROGILL);
   return RESUME_GUEST;
  }

  if (!(vcpu->arch.hfscr & HFSCR_EBB)) {

   kvmppc_core_queue_program(vcpu, SRR1_PROGILL);
   return RESUME_GUEST;
  }
  if ((msr & MSR_PR) && !(vcpu->arch.fscr & FSCR_EBB)) {

   vcpu->arch.fscr = (vcpu->arch.fscr & ~(0xffull << 56)) |
    ((u64)FSCR_EBB_LG << 56);
   kvmppc_book3s_queue_irqprio(vcpu, BOOK3S_INTERRUPT_FAC_UNAVAIL);
   return RESUME_GUEST;
  }
  bescr = vcpu->arch.bescr;

  WARN_ON_ONCE(!(MSR_TM_SUSPENDED(msr) &&
          ((bescr >> 30) & 3) == 2));
  bescr &= ~BESCR_GE;
  if (instr & (1 << 11))
   bescr |= BESCR_GE;
  vcpu->arch.bescr = bescr;
  msr = (msr & ~MSR_TS_MASK) | MSR_TS_T;
  vcpu->arch.shregs.msr = msr;
  vcpu->arch.cfar = vcpu->arch.regs.nip - 4;
  vcpu->arch.regs.nip = vcpu->arch.ebbrr;
  return RESUME_GUEST;

 case 133:

  rs = (instr >> 21) & 0x1f;
  newmsr = kvmppc_get_gpr(vcpu, rs);

  WARN_ON_ONCE(!(MSR_TM_SUSPENDED(msr) &&
          MSR_TM_TRANSACTIONAL(newmsr) &&
          (newmsr & MSR_TM)));

  newmsr = (newmsr & ~MSR_LE) | (msr & MSR_LE);
  newmsr = sanitize_msr(newmsr);
  vcpu->arch.shregs.msr = newmsr;
  return RESUME_GUEST;

 case 128:

  if ((msr & MSR_PR) && (vcpu->arch.vcore->pcr & PCR_ARCH_206)) {

   kvmppc_core_queue_program(vcpu, SRR1_PROGILL);
   return RESUME_GUEST;
  }

  if (!(vcpu->arch.hfscr & HFSCR_TM)) {

   kvmppc_core_queue_program(vcpu, SRR1_PROGILL);
   return RESUME_GUEST;
  }
  if (!(msr & MSR_TM)) {

   vcpu->arch.fscr = (vcpu->arch.fscr & ~(0xffull << 56)) |
    ((u64)FSCR_TM_LG << 56);
   kvmppc_book3s_queue_irqprio(vcpu,
      BOOK3S_INTERRUPT_FAC_UNAVAIL);
   return RESUME_GUEST;
  }

  vcpu->arch.regs.ccr = (vcpu->arch.regs.ccr & 0x0fffffff) |
   (((msr & MSR_TS_MASK) >> MSR_TS_S_LG) << 29);

  if (instr & (1 << 21)) {
   if (MSR_TM_SUSPENDED(msr))
    msr = (msr & ~MSR_TS_MASK) | MSR_TS_T;
  } else {
   if (MSR_TM_TRANSACTIONAL(msr))
    msr = (msr & ~MSR_TS_MASK) | MSR_TS_S;
  }
  vcpu->arch.shregs.msr = msr;
  return RESUME_GUEST;

 case 129:

  if (!(vcpu->arch.hfscr & HFSCR_TM)) {

   kvmppc_core_queue_program(vcpu, SRR1_PROGILL);
   return RESUME_GUEST;
  }
  if (!(msr & MSR_TM)) {

   vcpu->arch.fscr = (vcpu->arch.fscr & ~(0xffull << 56)) |
    ((u64)FSCR_TM_LG << 56);
   kvmppc_book3s_queue_irqprio(vcpu,
      BOOK3S_INTERRUPT_FAC_UNAVAIL);
   return RESUME_GUEST;
  }

  if (!MSR_TM_ACTIVE(msr)) {
   kvmppc_core_queue_program(vcpu, SRR1_PROGTM);
   return RESUME_GUEST;
  }

  if (!(vcpu->arch.orig_texasr & TEXASR_FS)) {
   ra = (instr >> 16) & 0x1f;
   if (ra)
    ra = kvmppc_get_gpr(vcpu, ra) & 0xff;
   emulate_tx_failure(vcpu, ra);
  }

  copy_from_checkpoint(vcpu);


  vcpu->arch.regs.ccr = (vcpu->arch.regs.ccr & 0x0fffffff) |
   (((msr & MSR_TS_MASK) >> MSR_TS_S_LG) << 29);
  vcpu->arch.shregs.msr &= ~MSR_TS_MASK;
  return RESUME_GUEST;

 case 130:


  if (!(vcpu->arch.hfscr & HFSCR_TM)) {

   kvmppc_core_queue_program(vcpu, SRR1_PROGILL);
   return RESUME_GUEST;
  }
  if (!(msr & MSR_TM)) {

   vcpu->arch.fscr = (vcpu->arch.fscr & ~(0xffull << 56)) |
    ((u64)FSCR_TM_LG << 56);
   kvmppc_book3s_queue_irqprio(vcpu,
      BOOK3S_INTERRUPT_FAC_UNAVAIL);
   return RESUME_GUEST;
  }

  if (MSR_TM_ACTIVE(msr) || !(vcpu->arch.texasr & TEXASR_FS)) {
   kvmppc_core_queue_program(vcpu, SRR1_PROGTM);
   return RESUME_GUEST;
  }

  copy_to_checkpoint(vcpu);


  vcpu->arch.regs.ccr = (vcpu->arch.regs.ccr & 0x0fffffff) |
   (((msr & MSR_TS_MASK) >> MSR_TS_S_LG) << 29);
  vcpu->arch.shregs.msr = msr | MSR_TS_S;
  return RESUME_GUEST;
 }


 WARN_ON_ONCE(1);
 return RESUME_GUEST;
}
