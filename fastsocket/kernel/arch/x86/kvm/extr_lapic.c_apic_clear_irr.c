
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {int irr_pending; scalar_t__ regs; } ;


 scalar_t__ APIC_IRR ;
 int apic_clear_vector (int,scalar_t__) ;
 int apic_search_irr (struct kvm_lapic*) ;

__attribute__((used)) static inline void apic_clear_irr(int vec, struct kvm_lapic *apic)
{
 apic->irr_pending = 0;
 apic_clear_vector(vec, apic->regs + APIC_IRR);
 if (apic_search_irr(apic) != -1)
  apic->irr_pending = 1;
}
