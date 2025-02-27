
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_18__ {int intercept_cr; scalar_t__ exit_info_2; scalar_t__ exit_info_1; scalar_t__ exit_code_hi; void* exit_code; int intercept; int intercept_exceptions; int nested_ctl; int event_inj; int int_ctl; } ;
struct TYPE_17__ {int cr3; int rax; int rsp; int rip; int rflags; int cr4; int cr0; int efer; int idtr; int gdtr; int ds; int ss; int cs; int es; } ;
struct vmcb {TYPE_4__ control; TYPE_3__ save; } ;
struct TYPE_16__ {int cr4; int efer; } ;
struct TYPE_19__ {TYPE_2__ arch; } ;
struct TYPE_15__ {struct vmcb* hsave; } ;
struct vcpu_svm {struct vmcb* vmcb; TYPE_5__ vcpu; TYPE_1__ nested; } ;
struct kvm_host_map {struct vmcb* hva; } ;


 int EINVAL ;
 void* SVM_EXIT_ERR ;
 int copy_vmcb_control_area (struct vmcb*,struct vmcb*) ;
 int enter_svm_guest_mode (struct vcpu_svm*,int ,struct vmcb*,struct kvm_host_map*) ;
 int gpa_to_gfn (int ) ;
 int kvm_clear_exception_queue (TYPE_5__*) ;
 int kvm_clear_interrupt_queue (TYPE_5__*) ;
 int kvm_get_rflags (TYPE_5__*) ;
 int kvm_inject_gp (TYPE_5__*,int ) ;
 int kvm_read_cr0 (TYPE_5__*) ;
 int kvm_read_cr3 (TYPE_5__*) ;
 int kvm_rip_read (TYPE_5__*) ;
 int kvm_skip_emulated_instruction (TYPE_5__*) ;
 int kvm_vcpu_map (TYPE_5__*,int ,struct kvm_host_map*) ;
 int kvm_vcpu_unmap (TYPE_5__*,struct kvm_host_map*,int) ;
 int nested_svm_vmexit (struct vcpu_svm*) ;
 int nested_svm_vmrun_msrpm (struct vcpu_svm*) ;
 int nested_vmcb_checks (struct vmcb*) ;
 scalar_t__ npt_enabled ;
 int trace_kvm_nested_intercepts (int,int,int ,int ) ;
 int trace_kvm_nested_vmrun (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int nested_svm_vmrun(struct vcpu_svm *svm)
{
 int ret;
 struct vmcb *nested_vmcb;
 struct vmcb *hsave = svm->nested.hsave;
 struct vmcb *vmcb = svm->vmcb;
 struct kvm_host_map map;
 u64 vmcb_gpa;

 vmcb_gpa = svm->vmcb->save.rax;

 ret = kvm_vcpu_map(&svm->vcpu, gpa_to_gfn(vmcb_gpa), &map);
 if (ret == -EINVAL) {
  kvm_inject_gp(&svm->vcpu, 0);
  return 1;
 } else if (ret) {
  return kvm_skip_emulated_instruction(&svm->vcpu);
 }

 ret = kvm_skip_emulated_instruction(&svm->vcpu);

 nested_vmcb = map.hva;

 if (!nested_vmcb_checks(nested_vmcb)) {
  nested_vmcb->control.exit_code = SVM_EXIT_ERR;
  nested_vmcb->control.exit_code_hi = 0;
  nested_vmcb->control.exit_info_1 = 0;
  nested_vmcb->control.exit_info_2 = 0;

  kvm_vcpu_unmap(&svm->vcpu, &map, 1);

  return ret;
 }

 trace_kvm_nested_vmrun(svm->vmcb->save.rip, vmcb_gpa,
          nested_vmcb->save.rip,
          nested_vmcb->control.int_ctl,
          nested_vmcb->control.event_inj,
          nested_vmcb->control.nested_ctl);

 trace_kvm_nested_intercepts(nested_vmcb->control.intercept_cr & 0xffff,
        nested_vmcb->control.intercept_cr >> 16,
        nested_vmcb->control.intercept_exceptions,
        nested_vmcb->control.intercept);


 kvm_clear_exception_queue(&svm->vcpu);
 kvm_clear_interrupt_queue(&svm->vcpu);





 hsave->save.es = vmcb->save.es;
 hsave->save.cs = vmcb->save.cs;
 hsave->save.ss = vmcb->save.ss;
 hsave->save.ds = vmcb->save.ds;
 hsave->save.gdtr = vmcb->save.gdtr;
 hsave->save.idtr = vmcb->save.idtr;
 hsave->save.efer = svm->vcpu.arch.efer;
 hsave->save.cr0 = kvm_read_cr0(&svm->vcpu);
 hsave->save.cr4 = svm->vcpu.arch.cr4;
 hsave->save.rflags = kvm_get_rflags(&svm->vcpu);
 hsave->save.rip = kvm_rip_read(&svm->vcpu);
 hsave->save.rsp = vmcb->save.rsp;
 hsave->save.rax = vmcb->save.rax;
 if (npt_enabled)
  hsave->save.cr3 = vmcb->save.cr3;
 else
  hsave->save.cr3 = kvm_read_cr3(&svm->vcpu);

 copy_vmcb_control_area(hsave, vmcb);

 enter_svm_guest_mode(svm, vmcb_gpa, nested_vmcb, &map);

 if (!nested_svm_vmrun_msrpm(svm)) {
  svm->vmcb->control.exit_code = SVM_EXIT_ERR;
  svm->vmcb->control.exit_code_hi = 0;
  svm->vmcb->control.exit_info_1 = 0;
  svm->vmcb->control.exit_info_2 = 0;

  nested_svm_vmexit(svm);
 }

 return ret;
}
