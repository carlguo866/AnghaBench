
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer; } ;
struct TYPE_4__ {TYPE_1__ trace_buffer; } ;


 scalar_t__ alloc_percpu_trace_buffer () ;
 int buffers_allocated ;
 TYPE_2__ global_trace ;
 int pr_warn (char*) ;
 int tracing_start_cmdline_record () ;
 int tracing_update_buffers () ;

void trace_printk_init_buffers(void)
{
 if (buffers_allocated)
  return;

 if (alloc_percpu_trace_buffer())
  return;



 pr_warn("\n");
 pr_warn("**********************************************************\n");
 pr_warn("**   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **\n");
 pr_warn("**                                                      **\n");
 pr_warn("** trace_printk() being used. Allocating extra memory.  **\n");
 pr_warn("**                                                      **\n");
 pr_warn("** This means that this is a DEBUG kernel and it is     **\n");
 pr_warn("** unsafe for production use.                           **\n");
 pr_warn("**                                                      **\n");
 pr_warn("** If you see this message and you are not debugging    **\n");
 pr_warn("** the kernel, report this immediately to your vendor!  **\n");
 pr_warn("**                                                      **\n");
 pr_warn("**   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **\n");
 pr_warn("**********************************************************\n");


 tracing_update_buffers();

 buffers_allocated = 1;







 if (global_trace.trace_buffer.buffer)
  tracing_start_cmdline_record();
}
