
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore {int valid; scalar_t__ current_committed; unsigned int callback_count; scalar_t__ exceptions_per_area; struct commit_callback* callbacks; scalar_t__ current_area; int pending_count; } ;
struct dm_exception_store {int dummy; } ;
struct dm_exception {int new_chunk; int old_chunk; } ;
struct core_exception {int new_chunk; int old_chunk; } ;
struct commit_callback {void (* callback ) (void*,int) ;void* context; } ;


 int REQ_FUA ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 scalar_t__ area_io (struct pstore*,int ,int) ;
 int atomic_dec_and_test (int *) ;
 struct pstore* get_info (struct dm_exception_store*) ;
 void stub1 (void*,int) ;
 int write_exception (struct pstore*,int ,struct core_exception*) ;
 scalar_t__ zero_disk_area (struct pstore*,scalar_t__) ;
 int zero_memory_area (struct pstore*) ;

__attribute__((used)) static void persistent_commit_exception(struct dm_exception_store *store,
     struct dm_exception *e, int valid,
     void (*callback) (void *, int success),
     void *callback_context)
{
 unsigned int i;
 struct pstore *ps = get_info(store);
 struct core_exception ce;
 struct commit_callback *cb;

 if (!valid)
  ps->valid = 0;

 ce.old_chunk = e->old_chunk;
 ce.new_chunk = e->new_chunk;
 write_exception(ps, ps->current_committed++, &ce);







 cb = ps->callbacks + ps->callback_count++;
 cb->callback = callback;
 cb->context = callback_context;





 if (!atomic_dec_and_test(&ps->pending_count) &&
     (ps->current_committed != ps->exceptions_per_area))
  return;




 if ((ps->current_committed == ps->exceptions_per_area) &&
     zero_disk_area(ps, ps->current_area + 1))
  ps->valid = 0;




 if (ps->valid && area_io(ps, REQ_OP_WRITE,
     REQ_PREFLUSH | REQ_FUA | REQ_SYNC))
  ps->valid = 0;




 if (ps->current_committed == ps->exceptions_per_area) {
  ps->current_committed = 0;
  ps->current_area++;
  zero_memory_area(ps);
 }

 for (i = 0; i < ps->callback_count; i++) {
  cb = ps->callbacks + i;
  cb->callback(cb->context, ps->valid);
 }

 ps->callback_count = 0;
}
