
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct runtime_instr_cb {scalar_t__ v; } ;
struct TYPE_16__ {int regs; scalar_t__ fpc; } ;
struct TYPE_14__ {scalar_t__ pfault_token; int gs_enabled; struct gs_cb* host_gscb; TYPE_1__ host_fpregs; int host_acrs; TYPE_10__* sie_block; int pfault_compare; int pfault_select; } ;
struct kvm_vcpu {TYPE_5__* run; TYPE_11__ arch; int kvm; } ;
struct TYPE_23__ {scalar_t__ pft; scalar_t__ bpbc; int pfc; int pfs; int gbea; int pp; int todpr; int ckc; int cputm; int crs; int prefix; int gscb; int riccb; } ;
struct TYPE_24__ {TYPE_8__ regs; } ;
struct kvm_run {int kvm_dirty_regs; TYPE_9__ s; int psw_addr; int psw_mask; } ;
struct gs_cb {scalar_t__ gssm; } ;
struct TYPE_22__ {int addr; int mask; } ;
struct TYPE_17__ {scalar_t__ fpc; int regs; } ;
struct TYPE_21__ {struct gs_cb* gs_cb; TYPE_2__ fpu; } ;
struct TYPE_18__ {int gscb; scalar_t__ fpc; int fprs; int vrs; int acrs; } ;
struct TYPE_19__ {TYPE_3__ regs; } ;
struct TYPE_20__ {TYPE_4__ s; } ;
struct TYPE_15__ {TYPE_6__ thread; } ;
struct TYPE_13__ {int ecb3; int fpf; int ecd; int ecb; int gbea; int pp; int todpr; int ckc; int gcr; TYPE_7__ gpsw; } ;


 int ECB3_RI ;
 int ECB_GS ;
 int ECD_HOSTREGMGMT ;
 int FPF_BPBC ;
 int KVM_REQ_TLB_FLUSH ;
 scalar_t__ KVM_S390_PFAULT_TOKEN_INVALID ;
 int KVM_SYNC_ARCH0 ;
 int KVM_SYNC_BPBC ;
 int KVM_SYNC_CRS ;
 int KVM_SYNC_GSCB ;
 int KVM_SYNC_PFAULT ;
 int KVM_SYNC_PREFIX ;
 int KVM_SYNC_RICCB ;
 scalar_t__ MACHINE_HAS_GS ;
 scalar_t__ MACHINE_HAS_VX ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,char*) ;
 int __ctl_set_bit (int,int) ;
 TYPE_12__* current ;
 int kvm_clear_async_pf_completion_queue (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_s390_set_cpu_timer (struct kvm_vcpu*,int ) ;
 int kvm_s390_set_prefix (struct kvm_vcpu*,int ) ;
 int memcpy (int *,int *,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int restore_access_regs (int ) ;
 int restore_gs_cb (struct gs_cb*) ;
 int save_access_regs (int ) ;
 int save_fpu_regs () ;
 int save_gs_cb (struct gs_cb*) ;
 scalar_t__ test_fp_ctl (scalar_t__) ;
 scalar_t__ test_kvm_facility (int ,int) ;

__attribute__((used)) static void sync_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
 struct runtime_instr_cb *riccb;
 struct gs_cb *gscb;

 riccb = (struct runtime_instr_cb *) &kvm_run->s.regs.riccb;
 gscb = (struct gs_cb *) &kvm_run->s.regs.gscb;
 vcpu->arch.sie_block->gpsw.mask = kvm_run->psw_mask;
 vcpu->arch.sie_block->gpsw.addr = kvm_run->psw_addr;
 if (kvm_run->kvm_dirty_regs & KVM_SYNC_PREFIX)
  kvm_s390_set_prefix(vcpu, kvm_run->s.regs.prefix);
 if (kvm_run->kvm_dirty_regs & KVM_SYNC_CRS) {
  memcpy(&vcpu->arch.sie_block->gcr, &kvm_run->s.regs.crs, 128);

  kvm_make_request(KVM_REQ_TLB_FLUSH, vcpu);
 }
 if (kvm_run->kvm_dirty_regs & KVM_SYNC_ARCH0) {
  kvm_s390_set_cpu_timer(vcpu, kvm_run->s.regs.cputm);
  vcpu->arch.sie_block->ckc = kvm_run->s.regs.ckc;
  vcpu->arch.sie_block->todpr = kvm_run->s.regs.todpr;
  vcpu->arch.sie_block->pp = kvm_run->s.regs.pp;
  vcpu->arch.sie_block->gbea = kvm_run->s.regs.gbea;
 }
 if (kvm_run->kvm_dirty_regs & KVM_SYNC_PFAULT) {
  vcpu->arch.pfault_token = kvm_run->s.regs.pft;
  vcpu->arch.pfault_select = kvm_run->s.regs.pfs;
  vcpu->arch.pfault_compare = kvm_run->s.regs.pfc;
  if (vcpu->arch.pfault_token == KVM_S390_PFAULT_TOKEN_INVALID)
   kvm_clear_async_pf_completion_queue(vcpu);
 }




 if ((kvm_run->kvm_dirty_regs & KVM_SYNC_RICCB) &&
     test_kvm_facility(vcpu->kvm, 64) &&
     riccb->v &&
     !(vcpu->arch.sie_block->ecb3 & ECB3_RI)) {
  VCPU_EVENT(vcpu, 3, "%s", "ENABLE: RI (sync_regs)");
  vcpu->arch.sie_block->ecb3 |= ECB3_RI;
 }




 if ((kvm_run->kvm_dirty_regs & KVM_SYNC_GSCB) &&
     test_kvm_facility(vcpu->kvm, 133) &&
     gscb->gssm &&
     !vcpu->arch.gs_enabled) {
  VCPU_EVENT(vcpu, 3, "%s", "ENABLE: GS (sync_regs)");
  vcpu->arch.sie_block->ecb |= ECB_GS;
  vcpu->arch.sie_block->ecd |= ECD_HOSTREGMGMT;
  vcpu->arch.gs_enabled = 1;
 }
 if ((kvm_run->kvm_dirty_regs & KVM_SYNC_BPBC) &&
     test_kvm_facility(vcpu->kvm, 82)) {
  vcpu->arch.sie_block->fpf &= ~FPF_BPBC;
  vcpu->arch.sie_block->fpf |= kvm_run->s.regs.bpbc ? FPF_BPBC : 0;
 }
 save_access_regs(vcpu->arch.host_acrs);
 restore_access_regs(vcpu->run->s.regs.acrs);

 save_fpu_regs();
 vcpu->arch.host_fpregs.fpc = current->thread.fpu.fpc;
 vcpu->arch.host_fpregs.regs = current->thread.fpu.regs;
 if (MACHINE_HAS_VX)
  current->thread.fpu.regs = vcpu->run->s.regs.vrs;
 else
  current->thread.fpu.regs = vcpu->run->s.regs.fprs;
 current->thread.fpu.fpc = vcpu->run->s.regs.fpc;
 if (test_fp_ctl(current->thread.fpu.fpc))

  current->thread.fpu.fpc = 0;
 if (MACHINE_HAS_GS) {
  preempt_disable();
  __ctl_set_bit(2, 4);
  if (current->thread.gs_cb) {
   vcpu->arch.host_gscb = current->thread.gs_cb;
   save_gs_cb(vcpu->arch.host_gscb);
  }
  if (vcpu->arch.gs_enabled) {
   current->thread.gs_cb = (struct gs_cb *)
      &vcpu->run->s.regs.gscb;
   restore_gs_cb(current->thread.gs_cb);
  }
  preempt_enable();
 }


 kvm_run->kvm_dirty_regs = 0;
}
