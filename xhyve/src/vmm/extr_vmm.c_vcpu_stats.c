
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm {TYPE_1__* vcpu; } ;
struct TYPE_2__ {void* stats; } ;



void *
vcpu_stats(struct vm *vm, int vcpuid)
{

 return (vm->vcpu[vcpuid].stats);
}
