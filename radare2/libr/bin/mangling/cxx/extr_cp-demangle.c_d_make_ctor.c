
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;
typedef enum gnu_v3_ctor_kinds { ____Placeholder_gnu_v3_ctor_kinds } gnu_v3_ctor_kinds ;


 int cplus_demangle_fill_ctor (struct demangle_component*,int,struct demangle_component*) ;
 struct demangle_component* d_make_empty (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_make_ctor (struct d_info *di, enum gnu_v3_ctor_kinds kind,
             struct demangle_component *name)
{
  struct demangle_component *p;

  p = d_make_empty (di);
  if (! cplus_demangle_fill_ctor (p, kind, name))
    return ((void*)0);
  return p;
}
