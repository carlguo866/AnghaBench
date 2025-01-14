
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int boolean_t ;
struct TYPE_4__ {int pv_flags; } ;
struct TYPE_5__ {int oflags; TYPE_1__ md; } ;


 int KASSERT (int,char*) ;
 int PV_TABLE_REF ;
 int VPO_UNMANAGED ;

boolean_t
pmap_is_referenced(vm_page_t m)
{

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("pmap_is_referenced: page %p is not managed", m));
 return ((m->md.pv_flags & PV_TABLE_REF) != 0);
}
