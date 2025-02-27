
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
typedef int u32 ;
struct trace_event_call {int dummy; } ;
struct TYPE_2__ {struct ring_buffer* buffer; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct bprint_entry {unsigned long ip; char const* fmt; int buf; } ;


 int TRACE_BPRINT ;
 int TRACE_BUF_SIZE ;
 int __buffer_unlock_commit (struct ring_buffer*,struct ring_buffer_event*) ;
 struct ring_buffer_event* __trace_buffer_lock_reserve (struct ring_buffer*,int ,int,unsigned long,int) ;
 int call_filter_check_discard (struct trace_event_call*,struct bprint_entry*,struct ring_buffer*,struct ring_buffer_event*) ;
 struct trace_event_call event_bprint ;
 int ftrace_trace_stack (struct trace_array*,struct ring_buffer*,unsigned long,int,int,int *) ;
 char* get_trace_buf () ;
 struct trace_array global_trace ;
 int local_save_flags (unsigned long) ;
 int memcpy (int ,char*,int) ;
 int pause_graph_tracing () ;
 int preempt_count () ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 int put_trace_buf () ;
 struct bprint_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 scalar_t__ tracing_disabled ;
 scalar_t__ tracing_selftest_running ;
 scalar_t__ unlikely (int) ;
 int unpause_graph_tracing () ;
 int vbin_printf (int *,int,char const*,int ) ;

int trace_vbprintk(unsigned long ip, const char *fmt, va_list args)
{
 struct trace_event_call *call = &event_bprint;
 struct ring_buffer_event *event;
 struct ring_buffer *buffer;
 struct trace_array *tr = &global_trace;
 struct bprint_entry *entry;
 unsigned long flags;
 char *tbuffer;
 int len = 0, size, pc;

 if (unlikely(tracing_selftest_running || tracing_disabled))
  return 0;


 pause_graph_tracing();

 pc = preempt_count();
 preempt_disable_notrace();

 tbuffer = get_trace_buf();
 if (!tbuffer) {
  len = 0;
  goto out_nobuffer;
 }

 len = vbin_printf((u32 *)tbuffer, TRACE_BUF_SIZE/sizeof(int), fmt, args);

 if (len > TRACE_BUF_SIZE/sizeof(int) || len < 0)
  goto out;

 local_save_flags(flags);
 size = sizeof(*entry) + sizeof(u32) * len;
 buffer = tr->trace_buffer.buffer;
 event = __trace_buffer_lock_reserve(buffer, TRACE_BPRINT, size,
         flags, pc);
 if (!event)
  goto out;
 entry = ring_buffer_event_data(event);
 entry->ip = ip;
 entry->fmt = fmt;

 memcpy(entry->buf, tbuffer, sizeof(u32) * len);
 if (!call_filter_check_discard(call, entry, buffer, event)) {
  __buffer_unlock_commit(buffer, event);
  ftrace_trace_stack(tr, buffer, flags, 6, pc, ((void*)0));
 }

out:
 put_trace_buf();

out_nobuffer:
 preempt_enable_notrace();
 unpause_graph_tracing();

 return len;
}
