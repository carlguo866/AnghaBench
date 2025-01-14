
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_5__ {scalar_t__ revision_id; } ;
struct vmcs12 {TYPE_1__ hdr; } ;
struct TYPE_8__ {TYPE_2__* hva; } ;
struct TYPE_7__ {scalar_t__ hv_evmcs_vmptr; unsigned long long current_vmptr; int dirty_vmcs12; TYPE_2__* hv_evmcs; TYPE_4__ hv_evmcs_map; int enlightened_vmcs_enabled; } ;
struct vcpu_vmx {TYPE_3__ nested; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_6__ {scalar_t__ revision_id; int hv_clean_fields; } ;


 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL ;
 scalar_t__ KVM_EVMCS_VERSION ;
 scalar_t__ VMCS12_REVISION ;
 struct vmcs12* get_vmcs12 (struct kvm_vcpu*) ;
 int gpa_to_gfn (scalar_t__) ;
 scalar_t__ kvm_vcpu_map (struct kvm_vcpu*,int ,TYPE_4__*) ;
 scalar_t__ likely (int) ;
 int memset (struct vmcs12*,int ,int) ;
 int nested_enlightened_vmentry (struct kvm_vcpu*,scalar_t__*) ;
 int nested_release_evmcs (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nested_vmx_handle_enlightened_vmptrld(struct kvm_vcpu *vcpu,
       bool from_launch)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 bool evmcs_gpa_changed = 0;
 u64 evmcs_gpa;

 if (likely(!vmx->nested.enlightened_vmcs_enabled))
  return 1;

 if (!nested_enlightened_vmentry(vcpu, &evmcs_gpa))
  return 1;

 if (unlikely(evmcs_gpa != vmx->nested.hv_evmcs_vmptr)) {
  if (!vmx->nested.hv_evmcs)
   vmx->nested.current_vmptr = -1ull;

  nested_release_evmcs(vcpu);

  if (kvm_vcpu_map(vcpu, gpa_to_gfn(evmcs_gpa),
     &vmx->nested.hv_evmcs_map))
   return 0;

  vmx->nested.hv_evmcs = vmx->nested.hv_evmcs_map.hva;
  if ((vmx->nested.hv_evmcs->revision_id != KVM_EVMCS_VERSION) &&
      (vmx->nested.hv_evmcs->revision_id != VMCS12_REVISION)) {
   nested_release_evmcs(vcpu);
   return 0;
  }

  vmx->nested.dirty_vmcs12 = 1;
  vmx->nested.hv_evmcs_vmptr = evmcs_gpa;

  evmcs_gpa_changed = 1;






  if (from_launch) {
   struct vmcs12 *vmcs12 = get_vmcs12(vcpu);
   memset(vmcs12, 0, sizeof(*vmcs12));
   vmcs12->hdr.revision_id = VMCS12_REVISION;
  }

 }





 if (from_launch || evmcs_gpa_changed)
  vmx->nested.hv_evmcs->hv_clean_fields &=
   ~HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL;

 return 1;
}
