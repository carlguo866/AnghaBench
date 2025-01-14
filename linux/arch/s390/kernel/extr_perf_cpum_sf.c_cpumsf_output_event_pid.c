
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {void* tid; void* pid; } ;
struct perf_sample_data {TYPE_1__ tid_entry; } ;
struct perf_output_handle {int dummy; } ;
struct perf_event_header {int size; } ;
struct perf_event {int dummy; } ;


 int PIDTYPE_PID ;
 int PIDTYPE_TGID ;
 void* cpumsf_pid_type (struct perf_event*,void*,int ) ;
 scalar_t__ perf_output_begin (struct perf_output_handle*,struct perf_event*,int ) ;
 int perf_output_end (struct perf_output_handle*) ;
 int perf_output_sample (struct perf_output_handle*,struct perf_event_header*,struct perf_sample_data*,struct perf_event*) ;
 int perf_prepare_sample (struct perf_event_header*,struct perf_sample_data*,struct perf_event*,struct pt_regs*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void cpumsf_output_event_pid(struct perf_event *event,
        struct perf_sample_data *data,
        struct pt_regs *regs)
{
 u32 pid;
 struct perf_event_header header;
 struct perf_output_handle handle;





 pid = data->tid_entry.pid;


 rcu_read_lock();

 perf_prepare_sample(&header, data, event, regs);
 if (perf_output_begin(&handle, event, header.size))
  goto out;


 data->tid_entry.pid = cpumsf_pid_type(event, pid, PIDTYPE_TGID);
 data->tid_entry.tid = cpumsf_pid_type(event, pid, PIDTYPE_PID);

 perf_output_sample(&handle, &header, data, event);
 perf_output_end(&handle);
out:
 rcu_read_unlock();
}
