
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ia64_rr {scalar_t__ ps; int val; } ;
typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int PAGE_FLAGS_RV_MASK ;
 int VTLB_PTE_IO ;
 int ia64_clear_ic () ;
 int ia64_get_rr (int) ;
 int ia64_itc (int,int,int,scalar_t__) ;
 int ia64_set_psr (int) ;
 scalar_t__ itir_ps (int) ;
 int mark_pages_dirty (struct kvm_vcpu*,int,scalar_t__) ;
 int paravirt_dv_serialize_data () ;
 int translate_phy_pte (int*,int,int) ;
 int vhpt_insert (int,int,int,int) ;

void thash_vhpt_insert(struct kvm_vcpu *v, u64 pte, u64 itir, u64 va, int type)
{
 u64 phy_pte, psr;
 union ia64_rr mrr;

 mrr.val = ia64_get_rr(va);
 phy_pte = translate_phy_pte(&pte, itir, va);

 if (itir_ps(itir) >= mrr.ps) {
  vhpt_insert(phy_pte, itir, va, pte);
 } else {
  phy_pte &= ~PAGE_FLAGS_RV_MASK;
  psr = ia64_clear_ic();
  ia64_itc(type, va, phy_pte, itir_ps(itir));
  paravirt_dv_serialize_data();
  ia64_set_psr(psr);
 }

 if (!(pte&VTLB_PTE_IO))
  mark_pages_dirty(v, pte, itir_ps(itir));
}
