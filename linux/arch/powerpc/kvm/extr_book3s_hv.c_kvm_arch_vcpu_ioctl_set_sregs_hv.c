
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ pvr; int slb_nr; int slb_max; TYPE_1__* slb; } ;
struct kvm_vcpu {TYPE_6__ arch; } ;
struct TYPE_9__ {TYPE_2__* slb; } ;
struct TYPE_10__ {TYPE_3__ ppc64; } ;
struct TYPE_11__ {TYPE_4__ s; } ;
struct kvm_sregs {scalar_t__ pvr; TYPE_5__ u; } ;
struct TYPE_8__ {int slbe; int slbv; } ;
struct TYPE_7__ {int orige; int origv; } ;


 int EINVAL ;
 int SLB_ESID_V ;

__attribute__((used)) static int kvm_arch_vcpu_ioctl_set_sregs_hv(struct kvm_vcpu *vcpu,
         struct kvm_sregs *sregs)
{
 int i, j;


 if (sregs->pvr != vcpu->arch.pvr)
  return -EINVAL;

 j = 0;
 for (i = 0; i < vcpu->arch.slb_nr; i++) {
  if (sregs->u.s.ppc64.slb[i].slbe & SLB_ESID_V) {
   vcpu->arch.slb[j].orige = sregs->u.s.ppc64.slb[i].slbe;
   vcpu->arch.slb[j].origv = sregs->u.s.ppc64.slb[i].slbv;
   ++j;
  }
 }
 vcpu->arch.slb_max = j;

 return 0;
}
