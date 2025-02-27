
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vcpu {int fd; } ;
struct kvm_vm {int dummy; } ;
struct kvm_nested_state {int dummy; } ;


 int KVM_GET_NESTED_STATE ;
 int TEST_ASSERT (int,char*,int,...) ;
 int errno ;
 int ioctl (int ,int ,struct kvm_nested_state*) ;
 struct vcpu* vcpu_find (struct kvm_vm*,int ) ;

void vcpu_nested_state_get(struct kvm_vm *vm, uint32_t vcpuid,
      struct kvm_nested_state *state)
{
 struct vcpu *vcpu = vcpu_find(vm, vcpuid);
 int ret;

 TEST_ASSERT(vcpu != ((void*)0), "vcpu not found, vcpuid: %u", vcpuid);

 ret = ioctl(vcpu->fd, KVM_GET_NESTED_STATE, state);
 TEST_ASSERT(ret == 0,
  "KVM_SET_NESTED_STATE failed, ret: %i errno: %i",
  ret, errno);
}
