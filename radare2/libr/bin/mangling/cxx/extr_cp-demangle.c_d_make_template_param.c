
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; } ;
struct TYPE_4__ {TYPE_1__ s_number; } ;
struct demangle_component {TYPE_2__ u; int type; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_TEMPLATE_PARAM ;
 struct demangle_component* d_make_empty (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_make_template_param (struct d_info *di, int i)
{
  struct demangle_component *p;

  p = d_make_empty (di);
  if (p != ((void*)0))
    {
      p->type = DEMANGLE_COMPONENT_TEMPLATE_PARAM;
      p->u.s_number.number = i;
    }
  return p;
}
