
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_target {int me; } ;
struct xt_percpu_counter_alloc_state {int dummy; } ;
struct TYPE_5__ {struct xt_target* target; } ;
struct TYPE_4__ {int revision; int name; } ;
struct TYPE_6__ {TYPE_2__ kernel; TYPE_1__ user; } ;
struct xt_entry_target {TYPE_3__ u; } ;
struct arpt_entry {int counters; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct xt_target*) ;
 int NFPROTO_ARP ;
 int PTR_ERR (struct xt_target*) ;
 struct xt_entry_target* arpt_get_target (struct arpt_entry*) ;
 int check_target (struct arpt_entry*,char const*) ;
 int module_put (int ) ;
 int xt_percpu_counter_alloc (struct xt_percpu_counter_alloc_state*,int *) ;
 int xt_percpu_counter_free (int *) ;
 struct xt_target* xt_request_find_target (int ,int ,int ) ;

__attribute__((used)) static inline int
find_check_entry(struct arpt_entry *e, const char *name, unsigned int size,
   struct xt_percpu_counter_alloc_state *alloc_state)
{
 struct xt_entry_target *t;
 struct xt_target *target;
 int ret;

 if (!xt_percpu_counter_alloc(alloc_state, &e->counters))
  return -ENOMEM;

 t = arpt_get_target(e);
 target = xt_request_find_target(NFPROTO_ARP, t->u.user.name,
     t->u.user.revision);
 if (IS_ERR(target)) {
  ret = PTR_ERR(target);
  goto out;
 }
 t->u.kernel.target = target;

 ret = check_target(e, name);
 if (ret)
  goto err;
 return 0;
err:
 module_put(t->u.kernel.target->me);
out:
 xt_percpu_counter_free(&e->counters);

 return ret;
}
