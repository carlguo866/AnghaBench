
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vgic_dist {int propbaser; } ;
struct vgic_cpu {scalar_t__ lpis_enabled; } ;
struct TYPE_6__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_2__* kvm; } ;
typedef int gpa_t ;
struct TYPE_4__ {struct vgic_dist vgic; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;


 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ cmpxchg64 (int *,scalar_t__,scalar_t__) ;
 scalar_t__ update_64bit_reg (scalar_t__,int,unsigned int,unsigned long) ;
 scalar_t__ vgic_sanitise_propbaser (scalar_t__) ;

__attribute__((used)) static void vgic_mmio_write_propbase(struct kvm_vcpu *vcpu,
         gpa_t addr, unsigned int len,
         unsigned long val)
{
 struct vgic_dist *dist = &vcpu->kvm->arch.vgic;
 struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
 u64 old_propbaser, propbaser;


 if (vgic_cpu->lpis_enabled)
  return;

 do {
  old_propbaser = READ_ONCE(dist->propbaser);
  propbaser = old_propbaser;
  propbaser = update_64bit_reg(propbaser, addr & 4, len, val);
  propbaser = vgic_sanitise_propbaser(propbaser);
 } while (cmpxchg64(&dist->propbaser, old_propbaser,
      propbaser) != old_propbaser);
}
