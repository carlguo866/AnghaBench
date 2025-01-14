
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t nr; struct cache_entry** entries; } ;
struct submodule_update_clone {size_t current; int failed_clones_nr; struct cache_entry** failed_clones; TYPE_1__ list; } ;
struct strbuf {int dummy; } ;
struct child_process {int dummy; } ;
struct cache_entry {int dummy; } ;


 scalar_t__ prepare_to_clone_next_submodule (struct cache_entry const*,struct child_process*,struct submodule_update_clone*,struct strbuf*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int* xmalloc (int) ;

__attribute__((used)) static int update_clone_get_next_task(struct child_process *child,
          struct strbuf *err,
          void *suc_cb,
          void **idx_task_cb)
{
 struct submodule_update_clone *suc = suc_cb;
 const struct cache_entry *ce;
 int index;

 for (; suc->current < suc->list.nr; suc->current++) {
  ce = suc->list.entries[suc->current];
  if (prepare_to_clone_next_submodule(ce, child, suc, err)) {
   int *p = xmalloc(sizeof(*p));
   *p = suc->current;
   *idx_task_cb = p;
   suc->current++;
   return 1;
  }
 }






 index = suc->current - suc->list.nr;
 if (index < suc->failed_clones_nr) {
  int *p;
  ce = suc->failed_clones[index];
  if (!prepare_to_clone_next_submodule(ce, child, suc, err)) {
   suc->current ++;
   strbuf_addstr(err, "BUG: submodule considered for "
        "cloning, doesn't need cloning "
        "any more?\n");
   return 0;
  }
  p = xmalloc(sizeof(*p));
  *p = suc->current;
  *idx_task_cb = p;
  suc->current ++;
  return 1;
 }

 return 0;
}
