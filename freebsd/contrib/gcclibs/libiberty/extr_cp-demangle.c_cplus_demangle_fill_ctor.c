
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; struct demangle_component* name; } ;
struct TYPE_4__ {TYPE_1__ s_ctor; } ;
struct demangle_component {TYPE_2__ u; int type; } ;
typedef enum gnu_v3_ctor_kinds { ____Placeholder_gnu_v3_ctor_kinds } gnu_v3_ctor_kinds ;


 int DEMANGLE_COMPONENT_CTOR ;
 int gnu_v3_complete_object_allocating_ctor ;
 int gnu_v3_complete_object_ctor ;

int
cplus_demangle_fill_ctor (struct demangle_component *p,
                          enum gnu_v3_ctor_kinds kind,
                          struct demangle_component *name)
{
  if (p == ((void*)0)
      || name == ((void*)0)
      || (kind < gnu_v3_complete_object_ctor
   && kind > gnu_v3_complete_object_allocating_ctor))
    return 0;
  p->type = DEMANGLE_COMPONENT_CTOR;
  p->u.s_ctor.kind = kind;
  p->u.s_ctor.name = name;
  return 1;
}
