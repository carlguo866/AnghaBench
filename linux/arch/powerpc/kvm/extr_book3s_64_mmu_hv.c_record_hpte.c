
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revmap_entry {unsigned long guest_rpte; } ;
typedef int __be64 ;


 int CPU_FTR_ARCH_300 ;
 unsigned long HPTE_GR_MODIFIED ;
 unsigned long HPTE_R_C ;
 unsigned long HPTE_R_R ;
 int HPTE_V_ABSENT ;
 unsigned long HPTE_V_BOLTED ;
 int HPTE_V_HVLOCK ;
 int HPTE_V_VALID ;
 unsigned long KVM_GET_HTAB_BOLTED_ONLY ;
 unsigned long be64_to_cpu (int ) ;
 scalar_t__ cpu_has_feature (int ) ;
 int cpu_relax () ;
 unsigned long cpu_to_be64 (unsigned long) ;
 int hpte_dirty (struct revmap_entry*,int *) ;
 unsigned long hpte_new_to_old_r (unsigned long) ;
 unsigned long hpte_new_to_old_v (unsigned long,unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int try_lock_hpte (int *,int ) ;
 int unlock_hpte (int *,unsigned long) ;

__attribute__((used)) static long record_hpte(unsigned long flags, __be64 *hptp,
   unsigned long *hpte, struct revmap_entry *revp,
   int want_valid, int first_pass)
{
 unsigned long v, r, hr;
 unsigned long rcbits_unset;
 int ok = 1;
 int valid, dirty;


 dirty = hpte_dirty(revp, hptp);
 if (!first_pass && !dirty)
  return 0;

 valid = 0;
 if (be64_to_cpu(hptp[0]) & (HPTE_V_VALID | HPTE_V_ABSENT)) {
  valid = 1;
  if ((flags & KVM_GET_HTAB_BOLTED_ONLY) &&
      !(be64_to_cpu(hptp[0]) & HPTE_V_BOLTED))
   valid = 0;
 }
 if (valid != want_valid)
  return 0;

 v = r = 0;
 if (valid || dirty) {

  preempt_disable();
  while (!try_lock_hpte(hptp, HPTE_V_HVLOCK))
   cpu_relax();
  v = be64_to_cpu(hptp[0]);
  hr = be64_to_cpu(hptp[1]);
  if (cpu_has_feature(CPU_FTR_ARCH_300)) {
   v = hpte_new_to_old_v(v, hr);
   hr = hpte_new_to_old_r(hr);
  }


  valid = !!(v & HPTE_V_VALID);
  dirty = !!(revp->guest_rpte & HPTE_GR_MODIFIED);


  rcbits_unset = ~revp->guest_rpte & (HPTE_R_R | HPTE_R_C);
  if (valid && (rcbits_unset & hr)) {
   revp->guest_rpte |= (hr &
    (HPTE_R_R | HPTE_R_C)) | HPTE_GR_MODIFIED;
   dirty = 1;
  }

  if (v & HPTE_V_ABSENT) {
   v &= ~HPTE_V_ABSENT;
   v |= HPTE_V_VALID;
   valid = 1;
  }
  if ((flags & KVM_GET_HTAB_BOLTED_ONLY) && !(v & HPTE_V_BOLTED))
   valid = 0;

  r = revp->guest_rpte;

  if (valid == want_valid && dirty) {
   r &= ~HPTE_GR_MODIFIED;
   revp->guest_rpte = r;
  }
  unlock_hpte(hptp, be64_to_cpu(hptp[0]));
  preempt_enable();
  if (!(valid == want_valid && (first_pass || dirty)))
   ok = 0;
 }
 hpte[0] = cpu_to_be64(v);
 hpte[1] = cpu_to_be64(r);
 return ok;
}
