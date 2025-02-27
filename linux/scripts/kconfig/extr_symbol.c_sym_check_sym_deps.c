
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int expr; } ;
struct TYPE_6__ {int expr; } ;
struct TYPE_5__ {int expr; } ;
struct symbol {struct property* prop; TYPE_3__ implied; TYPE_2__ rev_dep; TYPE_1__ dir_dep; } ;
struct TYPE_8__ {int expr; } ;
struct property {scalar_t__ type; int expr; TYPE_4__ visible; struct property* next; } ;
struct dep_stack {int * expr; struct property* prop; } ;


 scalar_t__ P_CHOICE ;
 scalar_t__ P_DEFAULT ;
 scalar_t__ P_IMPLY ;
 scalar_t__ P_SELECT ;
 int dep_stack_insert (struct dep_stack*,struct symbol*) ;
 int dep_stack_remove () ;
 struct symbol* sym_check_expr_deps (int ) ;
 scalar_t__ sym_is_choice (struct symbol*) ;

__attribute__((used)) static struct symbol *sym_check_sym_deps(struct symbol *sym)
{
 struct symbol *sym2;
 struct property *prop;
 struct dep_stack stack;

 dep_stack_insert(&stack, sym);

 stack.expr = &sym->dir_dep.expr;
 sym2 = sym_check_expr_deps(sym->dir_dep.expr);
 if (sym2)
  goto out;

 stack.expr = &sym->rev_dep.expr;
 sym2 = sym_check_expr_deps(sym->rev_dep.expr);
 if (sym2)
  goto out;

 stack.expr = &sym->implied.expr;
 sym2 = sym_check_expr_deps(sym->implied.expr);
 if (sym2)
  goto out;

 stack.expr = ((void*)0);

 for (prop = sym->prop; prop; prop = prop->next) {
  if (prop->type == P_CHOICE || prop->type == P_SELECT ||
      prop->type == P_IMPLY)
   continue;
  stack.prop = prop;
  sym2 = sym_check_expr_deps(prop->visible.expr);
  if (sym2)
   break;
  if (prop->type != P_DEFAULT || sym_is_choice(sym))
   continue;
  stack.expr = &prop->expr;
  sym2 = sym_check_expr_deps(prop->expr);
  if (sym2)
   break;
  stack.expr = ((void*)0);
 }

out:
 dep_stack_remove();

 return sym2;
}
