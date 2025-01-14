
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tracing_map_elt {int dummy; } ;
struct seq_file {int dummy; } ;
struct hist_trigger_data {unsigned int n_vals; TYPE_1__** fields; } ;
struct TYPE_2__ {int flags; } ;


 int HIST_FIELD_FL_EXPR ;
 int HIST_FIELD_FL_HEX ;
 int HIST_FIELD_FL_VAR ;
 unsigned int HITCOUNT_IDX ;
 char* hist_field_name (TYPE_1__*,int ) ;
 int hist_trigger_print_key (struct seq_file*,struct hist_trigger_data*,void*,struct tracing_map_elt*) ;
 int print_actions (struct seq_file*,struct hist_trigger_data*,struct tracing_map_elt*) ;
 int seq_printf (struct seq_file*,char*,char const*,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int tracing_map_read_sum (struct tracing_map_elt*,unsigned int) ;

__attribute__((used)) static void hist_trigger_entry_print(struct seq_file *m,
         struct hist_trigger_data *hist_data,
         void *key,
         struct tracing_map_elt *elt)
{
 const char *field_name;
 unsigned int i;

 hist_trigger_print_key(m, hist_data, key, elt);

 seq_printf(m, " hitcount: %10llu",
     tracing_map_read_sum(elt, HITCOUNT_IDX));

 for (i = 1; i < hist_data->n_vals; i++) {
  field_name = hist_field_name(hist_data->fields[i], 0);

  if (hist_data->fields[i]->flags & HIST_FIELD_FL_VAR ||
      hist_data->fields[i]->flags & HIST_FIELD_FL_EXPR)
   continue;

  if (hist_data->fields[i]->flags & HIST_FIELD_FL_HEX) {
   seq_printf(m, "  %s: %10llx", field_name,
       tracing_map_read_sum(elt, i));
  } else {
   seq_printf(m, "  %s: %10llu", field_name,
       tracing_map_read_sum(elt, i));
  }
 }

 print_actions(m, hist_data, elt);

 seq_puts(m, "\n");
}
