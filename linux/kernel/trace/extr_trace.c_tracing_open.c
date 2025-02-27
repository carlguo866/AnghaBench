
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {int iter_flags; } ;
struct trace_buffer {int dummy; } ;
struct trace_array {int trace_flags; struct trace_buffer max_buffer; TYPE_1__* current_trace; struct trace_buffer trace_buffer; } ;
struct inode {struct trace_array* i_private; } ;
struct file {int f_mode; int f_flags; } ;
struct TYPE_2__ {scalar_t__ print_max; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (struct trace_iterator*) ;
 int O_TRUNC ;
 int PTR_ERR (struct trace_iterator*) ;
 int RING_BUFFER_ALL_CPUS ;
 int TRACE_FILE_LAT_FMT ;
 int TRACE_ITER_LATENCY_FMT ;
 struct trace_iterator* __tracing_open (struct inode*,struct file*,int) ;
 int trace_array_put (struct trace_array*) ;
 int tracing_check_open_get_tr (struct trace_array*) ;
 int tracing_get_cpu (struct inode*) ;
 int tracing_reset_cpu (struct trace_buffer*,int) ;
 int tracing_reset_online_cpus (struct trace_buffer*) ;

__attribute__((used)) static int tracing_open(struct inode *inode, struct file *file)
{
 struct trace_array *tr = inode->i_private;
 struct trace_iterator *iter;
 int ret;

 ret = tracing_check_open_get_tr(tr);
 if (ret)
  return ret;


 if ((file->f_mode & FMODE_WRITE) && (file->f_flags & O_TRUNC)) {
  int cpu = tracing_get_cpu(inode);
  struct trace_buffer *trace_buf = &tr->trace_buffer;






  if (cpu == RING_BUFFER_ALL_CPUS)
   tracing_reset_online_cpus(trace_buf);
  else
   tracing_reset_cpu(trace_buf, cpu);
 }

 if (file->f_mode & FMODE_READ) {
  iter = __tracing_open(inode, file, 0);
  if (IS_ERR(iter))
   ret = PTR_ERR(iter);
  else if (tr->trace_flags & TRACE_ITER_LATENCY_FMT)
   iter->iter_flags |= TRACE_FILE_LAT_FMT;
 }

 if (ret < 0)
  trace_array_put(tr);

 return ret;
}
