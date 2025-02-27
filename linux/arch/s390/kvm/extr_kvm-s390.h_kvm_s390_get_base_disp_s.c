
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_8__ {TYPE_2__* sie_block; } ;
struct kvm_vcpu {TYPE_1__* run; TYPE_3__ arch; } ;
struct TYPE_10__ {int * gprs; } ;
struct TYPE_9__ {TYPE_5__ regs; } ;
struct TYPE_7__ {int ipb; } ;
struct TYPE_6__ {TYPE_4__ s; } ;



__attribute__((used)) static inline u64 kvm_s390_get_base_disp_s(struct kvm_vcpu *vcpu, u8 *ar)
{
 u32 base2 = vcpu->arch.sie_block->ipb >> 28;
 u32 disp2 = ((vcpu->arch.sie_block->ipb & 0x0fff0000) >> 16);

 if (ar)
  *ar = base2;

 return (base2 ? vcpu->run->s.regs.gprs[base2] : 0) + disp2;
}
