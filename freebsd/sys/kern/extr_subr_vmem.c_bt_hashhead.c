
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int vm_hashsize; struct vmem_hashlist* vm_hashlist; } ;
typedef TYPE_1__ vmem_t ;
typedef int vmem_addr_t ;
struct vmem_hashlist {int dummy; } ;
typedef int addr ;


 unsigned int hash32_buf (int *,int,int ) ;

__attribute__((used)) static struct vmem_hashlist *
bt_hashhead(vmem_t *vm, vmem_addr_t addr)
{
 struct vmem_hashlist *list;
 unsigned int hash;

 hash = hash32_buf(&addr, sizeof(addr), 0);
 list = &vm->vm_hashlist[hash % vm->vm_hashsize];

 return list;
}
