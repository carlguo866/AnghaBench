
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array {int buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct kmemtrace_alloc_entry {int type_id; unsigned long call_site; size_t bytes_req; size_t bytes_alloc; int node; int gfp_flags; void const* ptr; TYPE_1__ ent; } ;
struct ftrace_event_call {int dummy; } ;
typedef int gfp_t ;
typedef enum kmemtrace_type_id { ____Placeholder_kmemtrace_type_id } kmemtrace_type_id ;


 int TRACE_KMEM_ALLOC ;
 struct ftrace_event_call event_kmem_alloc ;
 int filter_check_discard (struct ftrace_event_call*,struct kmemtrace_alloc_entry*,int ,struct ring_buffer_event*) ;
 struct trace_array* kmemtrace_array ;
 struct kmemtrace_alloc_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 struct ring_buffer_event* ring_buffer_lock_reserve (int ,int) ;
 int ring_buffer_unlock_commit (int ,struct ring_buffer_event*) ;
 int trace_wake_up () ;
 int tracing_generic_entry_update (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline void kmemtrace_alloc(enum kmemtrace_type_id type_id,
       unsigned long call_site,
       const void *ptr,
       size_t bytes_req,
       size_t bytes_alloc,
       gfp_t gfp_flags,
       int node)
{
 struct ftrace_event_call *call = &event_kmem_alloc;
 struct trace_array *tr = kmemtrace_array;
 struct kmemtrace_alloc_entry *entry;
 struct ring_buffer_event *event;

 event = ring_buffer_lock_reserve(tr->buffer, sizeof(*entry));
 if (!event)
  return;

 entry = ring_buffer_event_data(event);
 tracing_generic_entry_update(&entry->ent, 0, 0);

 entry->ent.type = TRACE_KMEM_ALLOC;
 entry->type_id = type_id;
 entry->call_site = call_site;
 entry->ptr = ptr;
 entry->bytes_req = bytes_req;
 entry->bytes_alloc = bytes_alloc;
 entry->gfp_flags = gfp_flags;
 entry->node = node;

 if (!filter_check_discard(call, entry, tr->buffer, event))
  ring_buffer_unlock_commit(tr->buffer, event);

 trace_wake_up();
}
