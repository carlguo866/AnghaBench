
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int u_int ;
struct TYPE_3__ {int busy_lock; } ;


 int VPB_BIT_SHARED ;
 int VPB_UNBUSIED ;

int
vm_page_sbusied(vm_page_t m)
{
 u_int x;

 x = m->busy_lock;
 return ((x & VPB_BIT_SHARED) != 0 && x != VPB_UNBUSIED);
}
