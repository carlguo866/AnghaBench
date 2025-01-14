
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hist_trigger_data {TYPE_1__* attrs; } ;
struct TYPE_4__ {unsigned int n_vars; char** name; char** expr; } ;
struct TYPE_3__ {TYPE_2__ var_defs; } ;


 scalar_t__ contains_operator (char*) ;
 scalar_t__ is_var_ref (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static char *field_name_from_var(struct hist_trigger_data *hist_data,
     char *var_name)
{
 char *name, *field;
 unsigned int i;

 for (i = 0; i < hist_data->attrs->var_defs.n_vars; i++) {
  name = hist_data->attrs->var_defs.name[i];

  if (strcmp(var_name, name) == 0) {
   field = hist_data->attrs->var_defs.expr[i];
   if (contains_operator(field) || is_var_ref(field))
    continue;
   return field;
  }
 }

 return ((void*)0);
}
