
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int hpa_t ;
typedef int gva_t ;



__attribute__((used)) static void nonpaging_invlpg(struct kvm_vcpu *vcpu, gva_t gva, hpa_t root)
{
}
