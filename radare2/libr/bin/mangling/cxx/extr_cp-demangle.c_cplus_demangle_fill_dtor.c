
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kind; struct demangle_component* name; } ;
struct TYPE_3__ {TYPE_2__ s_dtor; } ;
struct demangle_component {TYPE_1__ u; int type; scalar_t__ d_printing; } ;
typedef enum gnu_v3_dtor_kinds { ____Placeholder_gnu_v3_dtor_kinds } gnu_v3_dtor_kinds ;


 int DEMANGLE_COMPONENT_DTOR ;
 int gnu_v3_deleting_dtor ;
 int gnu_v3_object_dtor_group ;

int
cplus_demangle_fill_dtor (struct demangle_component *p,
                          enum gnu_v3_dtor_kinds kind,
                          struct demangle_component *name)
{
  if (p == ((void*)0)
      || name == ((void*)0)
      || (int) kind < gnu_v3_deleting_dtor
      || (int) kind > gnu_v3_object_dtor_group)
    return 0;
  p->d_printing = 0;
  p->type = DEMANGLE_COMPONENT_DTOR;
  p->u.s_dtor.kind = kind;
  p->u.s_dtor.name = name;
  return 1;
}
