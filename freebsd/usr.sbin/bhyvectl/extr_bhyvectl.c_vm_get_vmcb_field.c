
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;


 int VMCB_ACCESS (int,int) ;
 int vm_get_register (struct vmctx*,int,int ,int *) ;

__attribute__((used)) static int
vm_get_vmcb_field(struct vmctx *ctx, int vcpu, int off, int bytes,
 uint64_t *ret_val)
{

 return (vm_get_register(ctx, vcpu, VMCB_ACCESS(off, bytes), ret_val));
}
