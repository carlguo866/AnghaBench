
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int cookie; } ;


 int EINVAL ;
 int VMSETCAP (int ,int,int,int) ;
 int VM_CAP_MAX ;
 int VM_MAXCPU ;

int
vm_set_capability(struct vm *vm, int vcpu, int type, int val)
{
 if (vcpu < 0 || vcpu >= VM_MAXCPU)
  return (EINVAL);

 if (type < 0 || type >= VM_CAP_MAX)
  return (EINVAL);

 return (VMSETCAP(vm->cookie, vcpu, type, val));
}
