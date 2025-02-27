
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct event_subsystem {struct event_filter* filter; } ;
struct event_filter {scalar_t__ filter_string; } ;


 int event_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;

void print_subsystem_event_filter(struct event_subsystem *system,
      struct trace_seq *s)
{
 struct event_filter *filter = system->filter;

 mutex_lock(&event_mutex);
 if (filter && filter->filter_string)
  trace_seq_printf(s, "%s\n", filter->filter_string);
 else
  trace_seq_printf(s, "none\n");
 mutex_unlock(&event_mutex);
}
