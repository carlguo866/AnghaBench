
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uprobe_trace_entry_head {unsigned long* vaddr; } ;
struct uprobe_cpu_buffer {int buf; } ;
struct TYPE_4__ {int size; } ;
struct trace_uprobe {TYPE_2__ tp; } ;
struct trace_event_file {struct trace_event_call* event_call; } ;
struct TYPE_3__ {int type; } ;
struct trace_event_call {TYPE_1__ event; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct pt_regs {int dummy; } ;


 void* DATAOF_TRACE_ENTRY (struct uprobe_trace_entry_head*,int) ;
 int PAGE_SIZE ;
 int SIZEOF_TRACE_ENTRY (scalar_t__) ;
 int WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int event_trigger_unlock_commit (struct trace_event_file*,struct ring_buffer*,struct ring_buffer_event*,struct uprobe_trace_entry_head*,int ,int ) ;
 void* instruction_pointer (struct pt_regs*) ;
 scalar_t__ is_ret_probe (struct trace_uprobe*) ;
 int memcpy (void*,int ,int) ;
 struct uprobe_trace_entry_head* ring_buffer_event_data (struct ring_buffer_event*) ;
 struct ring_buffer_event* trace_event_buffer_lock_reserve (struct ring_buffer**,struct trace_event_file*,int ,int,int ,int ) ;
 struct trace_event_call* trace_probe_event_call (TYPE_2__*) ;
 scalar_t__ trace_trigger_soft_disabled (struct trace_event_file*) ;

__attribute__((used)) static void __uprobe_trace_func(struct trace_uprobe *tu,
    unsigned long func, struct pt_regs *regs,
    struct uprobe_cpu_buffer *ucb, int dsize,
    struct trace_event_file *trace_file)
{
 struct uprobe_trace_entry_head *entry;
 struct ring_buffer_event *event;
 struct ring_buffer *buffer;
 void *data;
 int size, esize;
 struct trace_event_call *call = trace_probe_event_call(&tu->tp);

 WARN_ON(call != trace_file->event_call);

 if (WARN_ON_ONCE(tu->tp.size + dsize > PAGE_SIZE))
  return;

 if (trace_trigger_soft_disabled(trace_file))
  return;

 esize = SIZEOF_TRACE_ENTRY(is_ret_probe(tu));
 size = esize + tu->tp.size + dsize;
 event = trace_event_buffer_lock_reserve(&buffer, trace_file,
      call->event.type, size, 0, 0);
 if (!event)
  return;

 entry = ring_buffer_event_data(event);
 if (is_ret_probe(tu)) {
  entry->vaddr[0] = func;
  entry->vaddr[1] = instruction_pointer(regs);
  data = DATAOF_TRACE_ENTRY(entry, 1);
 } else {
  entry->vaddr[0] = instruction_pointer(regs);
  data = DATAOF_TRACE_ENTRY(entry, 0);
 }

 memcpy(data, ucb->buf, tu->tp.size + dsize);

 event_trigger_unlock_commit(trace_file, buffer, event, entry, 0, 0);
}
