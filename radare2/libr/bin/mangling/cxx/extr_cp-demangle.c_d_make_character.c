
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int character; } ;
struct TYPE_4__ {TYPE_1__ s_character; } ;
struct demangle_component {TYPE_2__ u; int type; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_CHARACTER ;
 struct demangle_component* d_make_empty (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_make_character (struct d_info *di, int c)
{
  struct demangle_component *p;
  p = d_make_empty (di);
  if (p != ((void*)0))
    {
      p->type = DEMANGLE_COMPONENT_CHARACTER;
      p->u.s_character.character = c;
    }
  return p;
}
