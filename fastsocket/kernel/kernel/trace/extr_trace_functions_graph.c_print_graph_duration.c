
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int trace_print_graph_duration (unsigned long long,struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*) ;

__attribute__((used)) static enum print_line_t
print_graph_duration(unsigned long long duration, struct trace_seq *s)
{
 int ret;

 ret = trace_print_graph_duration(duration, s);
 if (ret != TRACE_TYPE_HANDLED)
  return ret;

 ret = trace_seq_printf(s, "|  ");
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 return TRACE_TYPE_HANDLED;
}
