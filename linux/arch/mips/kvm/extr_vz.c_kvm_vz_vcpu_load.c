
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mips_coproc {int ** reg; } ;
struct TYPE_3__ {int last_sched_cpu; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int flags; } ;


 size_t MIPS_CP0_GUESTCTL2 ;
 size_t MIPS_CP0_GUESTCTL2_SEL ;
 int MIPS_GCTL0_MC ;
 int PF_VCPU ;
 int clear_c0_guestctl0 (int ) ;
 scalar_t__ cpu_guest_has_badinstr ;
 scalar_t__ cpu_guest_has_badinstrp ;
 scalar_t__ cpu_guest_has_conf1 ;
 scalar_t__ cpu_guest_has_conf2 ;
 scalar_t__ cpu_guest_has_conf3 ;
 scalar_t__ cpu_guest_has_conf4 ;
 scalar_t__ cpu_guest_has_conf5 ;
 scalar_t__ cpu_guest_has_conf6 ;
 scalar_t__ cpu_guest_has_conf7 ;
 scalar_t__ cpu_guest_has_contextconfig ;
 scalar_t__ cpu_guest_has_htw ;
 scalar_t__ cpu_guest_has_kscr (int) ;
 scalar_t__ cpu_guest_has_rw_llb ;
 scalar_t__ cpu_guest_has_segments ;
 scalar_t__ cpu_guest_has_userlocal ;
 scalar_t__ cpu_has_guestctl2 ;
 TYPE_2__* current ;
 int kvm_read_sw_gc0_ebase (struct mips_coproc*) ;
 int kvm_restore_gc0_badinstr (struct mips_coproc*) ;
 int kvm_restore_gc0_badinstrp (struct mips_coproc*) ;
 int kvm_restore_gc0_badvaddr (struct mips_coproc*) ;
 int kvm_restore_gc0_config (struct mips_coproc*) ;
 int kvm_restore_gc0_config1 (struct mips_coproc*) ;
 int kvm_restore_gc0_config2 (struct mips_coproc*) ;
 int kvm_restore_gc0_config3 (struct mips_coproc*) ;
 int kvm_restore_gc0_config4 (struct mips_coproc*) ;
 int kvm_restore_gc0_config5 (struct mips_coproc*) ;
 int kvm_restore_gc0_config6 (struct mips_coproc*) ;
 int kvm_restore_gc0_config7 (struct mips_coproc*) ;
 int kvm_restore_gc0_context (struct mips_coproc*) ;
 int kvm_restore_gc0_contextconfig (struct mips_coproc*) ;
 int kvm_restore_gc0_entryhi (struct mips_coproc*) ;
 int kvm_restore_gc0_entrylo0 (struct mips_coproc*) ;
 int kvm_restore_gc0_entrylo1 (struct mips_coproc*) ;
 int kvm_restore_gc0_epc (struct mips_coproc*) ;
 int kvm_restore_gc0_errorepc (struct mips_coproc*) ;
 int kvm_restore_gc0_hwrena (struct mips_coproc*) ;
 int kvm_restore_gc0_index (struct mips_coproc*) ;
 int kvm_restore_gc0_intctl (struct mips_coproc*) ;
 int kvm_restore_gc0_kscratch1 (struct mips_coproc*) ;
 int kvm_restore_gc0_kscratch2 (struct mips_coproc*) ;
 int kvm_restore_gc0_kscratch3 (struct mips_coproc*) ;
 int kvm_restore_gc0_kscratch4 (struct mips_coproc*) ;
 int kvm_restore_gc0_kscratch5 (struct mips_coproc*) ;
 int kvm_restore_gc0_kscratch6 (struct mips_coproc*) ;
 int kvm_restore_gc0_pagegrain (struct mips_coproc*) ;
 int kvm_restore_gc0_pagemask (struct mips_coproc*) ;
 int kvm_restore_gc0_pwbase (struct mips_coproc*) ;
 int kvm_restore_gc0_pwctl (struct mips_coproc*) ;
 int kvm_restore_gc0_pwfield (struct mips_coproc*) ;
 int kvm_restore_gc0_pwsize (struct mips_coproc*) ;
 int kvm_restore_gc0_segctl0 (struct mips_coproc*) ;
 int kvm_restore_gc0_segctl1 (struct mips_coproc*) ;
 int kvm_restore_gc0_segctl2 (struct mips_coproc*) ;
 int kvm_restore_gc0_status (struct mips_coproc*) ;
 int kvm_restore_gc0_userlocal (struct mips_coproc*) ;
 int kvm_restore_gc0_wired (struct mips_coproc*) ;
 int kvm_restore_gc0_xcontext (struct mips_coproc*) ;
 int kvm_restore_gc0_xcontextconfig (struct mips_coproc*) ;
 scalar_t__ kvm_trace_guest_mode_change ;
 int kvm_vz_restore_timer (struct kvm_vcpu*) ;
 int kvm_vz_vcpu_load_tlb (struct kvm_vcpu*,int) ;
 int kvm_vz_vcpu_load_wired (struct kvm_vcpu*) ;
 int kvm_vz_write_gc0_ebase (int ) ;
 struct kvm_vcpu** last_vcpu ;
 int set_c0_guestctl0 (int ) ;
 int tlbw_use_hazard () ;
 int write_c0_guestctl2 (int ) ;
 int write_gc0_lladdr (int ) ;

__attribute__((used)) static int kvm_vz_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 bool migrated, all;





 migrated = (vcpu->arch.last_sched_cpu != cpu);





 all = migrated || (last_vcpu[cpu] != vcpu);
 last_vcpu[cpu] = vcpu;





 kvm_restore_gc0_wired(cop0);
 if (current->flags & PF_VCPU) {
  tlbw_use_hazard();
  kvm_vz_vcpu_load_tlb(vcpu, cpu);
  kvm_vz_vcpu_load_wired(vcpu);
 }





 kvm_vz_restore_timer(vcpu);


 if (kvm_trace_guest_mode_change)
  set_c0_guestctl0(MIPS_GCTL0_MC);
 else
  clear_c0_guestctl0(MIPS_GCTL0_MC);


 if (!all)
  return 0;






 kvm_restore_gc0_config(cop0);
 if (cpu_guest_has_conf1)
  kvm_restore_gc0_config1(cop0);
 if (cpu_guest_has_conf2)
  kvm_restore_gc0_config2(cop0);
 if (cpu_guest_has_conf3)
  kvm_restore_gc0_config3(cop0);
 if (cpu_guest_has_conf4)
  kvm_restore_gc0_config4(cop0);
 if (cpu_guest_has_conf5)
  kvm_restore_gc0_config5(cop0);
 if (cpu_guest_has_conf6)
  kvm_restore_gc0_config6(cop0);
 if (cpu_guest_has_conf7)
  kvm_restore_gc0_config7(cop0);

 kvm_restore_gc0_index(cop0);
 kvm_restore_gc0_entrylo0(cop0);
 kvm_restore_gc0_entrylo1(cop0);
 kvm_restore_gc0_context(cop0);
 if (cpu_guest_has_contextconfig)
  kvm_restore_gc0_contextconfig(cop0);





 kvm_restore_gc0_pagemask(cop0);
 kvm_restore_gc0_pagegrain(cop0);
 kvm_restore_gc0_hwrena(cop0);
 kvm_restore_gc0_badvaddr(cop0);
 kvm_restore_gc0_entryhi(cop0);
 kvm_restore_gc0_status(cop0);
 kvm_restore_gc0_intctl(cop0);
 kvm_restore_gc0_epc(cop0);
 kvm_vz_write_gc0_ebase(kvm_read_sw_gc0_ebase(cop0));
 if (cpu_guest_has_userlocal)
  kvm_restore_gc0_userlocal(cop0);

 kvm_restore_gc0_errorepc(cop0);


 if (cpu_guest_has_conf4) {
  if (cpu_guest_has_kscr(2))
   kvm_restore_gc0_kscratch1(cop0);
  if (cpu_guest_has_kscr(3))
   kvm_restore_gc0_kscratch2(cop0);
  if (cpu_guest_has_kscr(4))
   kvm_restore_gc0_kscratch3(cop0);
  if (cpu_guest_has_kscr(5))
   kvm_restore_gc0_kscratch4(cop0);
  if (cpu_guest_has_kscr(6))
   kvm_restore_gc0_kscratch5(cop0);
  if (cpu_guest_has_kscr(7))
   kvm_restore_gc0_kscratch6(cop0);
 }

 if (cpu_guest_has_badinstr)
  kvm_restore_gc0_badinstr(cop0);
 if (cpu_guest_has_badinstrp)
  kvm_restore_gc0_badinstrp(cop0);

 if (cpu_guest_has_segments) {
  kvm_restore_gc0_segctl0(cop0);
  kvm_restore_gc0_segctl1(cop0);
  kvm_restore_gc0_segctl2(cop0);
 }


 if (cpu_guest_has_htw) {
  kvm_restore_gc0_pwbase(cop0);
  kvm_restore_gc0_pwfield(cop0);
  kvm_restore_gc0_pwsize(cop0);
  kvm_restore_gc0_pwctl(cop0);
 }


 if (cpu_has_guestctl2)
  write_c0_guestctl2(
   cop0->reg[MIPS_CP0_GUESTCTL2][MIPS_CP0_GUESTCTL2_SEL]);






 if (cpu_guest_has_rw_llb)
  write_gc0_lladdr(0);

 return 0;
}
