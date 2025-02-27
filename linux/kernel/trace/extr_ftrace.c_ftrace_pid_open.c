
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct seq_file {struct trace_array* private; } ;
struct inode {struct trace_array* i_private; } ;
struct file {int f_mode; int f_flags; struct seq_file* private_data; } ;


 int FMODE_WRITE ;
 int O_TRUNC ;
 int ftrace_pid_reset (struct trace_array*) ;
 int ftrace_pid_sops ;
 int seq_open (struct file*,int *) ;
 int trace_array_put (struct trace_array*) ;
 int tracing_check_open_get_tr (struct trace_array*) ;

__attribute__((used)) static int
ftrace_pid_open(struct inode *inode, struct file *file)
{
 struct trace_array *tr = inode->i_private;
 struct seq_file *m;
 int ret = 0;

 ret = tracing_check_open_get_tr(tr);
 if (ret)
  return ret;

 if ((file->f_mode & FMODE_WRITE) &&
     (file->f_flags & O_TRUNC))
  ftrace_pid_reset(tr);

 ret = seq_open(file, &ftrace_pid_sops);
 if (ret < 0) {
  trace_array_put(tr);
 } else {
  m = file->private_data;

  m->private = tr;
 }

 return ret;
}
