
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; struct demangle_component* sub; } ;
struct TYPE_4__ {TYPE_1__ s_unary_num; } ;
struct demangle_component {TYPE_2__ u; int type; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_DEFAULT_ARG ;
 struct demangle_component* d_make_empty (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_make_default_arg (struct d_info *di, int num,
      struct demangle_component *sub)
{
  struct demangle_component *p = d_make_empty (di);
  if (p)
    {
      p->type = DEMANGLE_COMPONENT_DEFAULT_ARG;
      p->u.s_unary_num.num = num;
      p->u.s_unary_num.sub = sub;
    }
  return p;
}
