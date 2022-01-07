
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vcpu_vmx {int idt_vectoring_info; TYPE_1__* loaded_vmcs; } ;
struct TYPE_2__ {int nmi_known_unmasked; int entry_time; int vnmi_blocked_time; int soft_vnmi_blocked; } ;


 int DF_VECTOR ;
 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_NMI ;
 int INTR_INFO_UNBLOCK_NMI ;
 int INTR_INFO_VALID_MASK ;
 int INTR_INFO_VECTOR_MASK ;
 int VECTORING_INFO_VALID_MASK ;
 int VM_EXIT_INTR_INFO ;
 scalar_t__ enable_vnmi ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 scalar_t__ unlikely (int ) ;
 int vmcs_read32 (int ) ;
 int vmcs_set_bits (int ,int) ;

__attribute__((used)) static void vmx_recover_nmi_blocking(struct vcpu_vmx *vmx)
{
 u32 exit_intr_info;
 bool unblock_nmi;
 u8 vector;
 bool idtv_info_valid;

 idtv_info_valid = vmx->idt_vectoring_info & VECTORING_INFO_VALID_MASK;

 if (enable_vnmi) {
  if (vmx->loaded_vmcs->nmi_known_unmasked)
   return;




  exit_intr_info = vmcs_read32(VM_EXIT_INTR_INFO);
  unblock_nmi = (exit_intr_info & INTR_INFO_UNBLOCK_NMI) != 0;
  vector = exit_intr_info & INTR_INFO_VECTOR_MASK;
  if ((exit_intr_info & INTR_INFO_VALID_MASK) && unblock_nmi &&
      vector != DF_VECTOR && !idtv_info_valid)
   vmcs_set_bits(GUEST_INTERRUPTIBILITY_INFO,
          GUEST_INTR_STATE_NMI);
  else
   vmx->loaded_vmcs->nmi_known_unmasked =
    !(vmcs_read32(GUEST_INTERRUPTIBILITY_INFO)
      & GUEST_INTR_STATE_NMI);
 } else if (unlikely(vmx->loaded_vmcs->soft_vnmi_blocked))
  vmx->loaded_vmcs->vnmi_blocked_time +=
   ktime_to_ns(ktime_sub(ktime_get(),
           vmx->loaded_vmcs->entry_time));
}
