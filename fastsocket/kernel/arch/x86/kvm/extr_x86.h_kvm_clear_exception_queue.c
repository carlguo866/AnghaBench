
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending; } ;
struct TYPE_4__ {TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;



__attribute__((used)) static inline void kvm_clear_exception_queue(struct kvm_vcpu *vcpu)
{
 vcpu->arch.exception.pending = 0;
}
