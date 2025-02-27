
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbe {int dummy; } ;
struct page {int dummy; } ;
struct kvmppc_vcpu_e500 {int* guest_tlb_size; int* shadow_tlb_size; struct page*** guest_tlb; struct page*** shadow_tlb; struct page*** shadow_pages; } ;


 int GFP_KERNEL ;
 int KVM_E500_TLB0_SIZE ;
 int KVM_E500_TLB1_SIZE ;
 int SPRN_TLB1CFG ;
 int kfree (struct page**) ;
 void* kzalloc (int,int ) ;
 int mfspr (int ) ;
 int tlb1_entry_num ;

int kvmppc_e500_tlb_init(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 tlb1_entry_num = mfspr(SPRN_TLB1CFG) & 0xFFF;

 vcpu_e500->guest_tlb_size[0] = KVM_E500_TLB0_SIZE;
 vcpu_e500->guest_tlb[0] =
  kzalloc(sizeof(struct tlbe) * KVM_E500_TLB0_SIZE, GFP_KERNEL);
 if (vcpu_e500->guest_tlb[0] == ((void*)0))
  goto err_out;

 vcpu_e500->shadow_tlb_size[0] = KVM_E500_TLB0_SIZE;
 vcpu_e500->shadow_tlb[0] =
  kzalloc(sizeof(struct tlbe) * KVM_E500_TLB0_SIZE, GFP_KERNEL);
 if (vcpu_e500->shadow_tlb[0] == ((void*)0))
  goto err_out_guest0;

 vcpu_e500->guest_tlb_size[1] = KVM_E500_TLB1_SIZE;
 vcpu_e500->guest_tlb[1] =
  kzalloc(sizeof(struct tlbe) * KVM_E500_TLB1_SIZE, GFP_KERNEL);
 if (vcpu_e500->guest_tlb[1] == ((void*)0))
  goto err_out_shadow0;

 vcpu_e500->shadow_tlb_size[1] = tlb1_entry_num;
 vcpu_e500->shadow_tlb[1] =
  kzalloc(sizeof(struct tlbe) * tlb1_entry_num, GFP_KERNEL);
 if (vcpu_e500->shadow_tlb[1] == ((void*)0))
  goto err_out_guest1;

 vcpu_e500->shadow_pages[0] = (struct page **)
  kzalloc(sizeof(struct page *) * KVM_E500_TLB0_SIZE, GFP_KERNEL);
 if (vcpu_e500->shadow_pages[0] == ((void*)0))
  goto err_out_shadow1;

 vcpu_e500->shadow_pages[1] = (struct page **)
  kzalloc(sizeof(struct page *) * tlb1_entry_num, GFP_KERNEL);
 if (vcpu_e500->shadow_pages[1] == ((void*)0))
  goto err_out_page0;

 return 0;

err_out_page0:
 kfree(vcpu_e500->shadow_pages[0]);
err_out_shadow1:
 kfree(vcpu_e500->shadow_tlb[1]);
err_out_guest1:
 kfree(vcpu_e500->guest_tlb[1]);
err_out_shadow0:
 kfree(vcpu_e500->shadow_tlb[0]);
err_out_guest0:
 kfree(vcpu_e500->guest_tlb[0]);
err_out:
 return -1;
}
