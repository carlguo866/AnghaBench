
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_thread_info () ;
 int trace_hardirqs_on () ;

void um_trace_signals_on(void)
{
 if (current_thread_info())
  trace_hardirqs_on();
}
