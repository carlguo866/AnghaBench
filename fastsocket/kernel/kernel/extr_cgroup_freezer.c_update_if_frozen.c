
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct freezer {int state; } ;
struct cgroup_iter {int dummy; } ;
struct cgroup {int dummy; } ;
typedef enum freezer_state { ____Placeholder_freezer_state } freezer_state ;


 int BUG_ON (int) ;
 int CGROUP_FREEZING ;
 int CGROUP_FROZEN ;
 int CGROUP_THAWED ;
 int cgroup_iter_end (struct cgroup*,struct cgroup_iter*) ;
 struct task_struct* cgroup_iter_next (struct cgroup*,struct cgroup_iter*) ;
 int cgroup_iter_start (struct cgroup*,struct cgroup_iter*) ;
 scalar_t__ is_task_frozen_enough (struct task_struct*) ;

__attribute__((used)) static void update_if_frozen(struct cgroup *cgroup,
     struct freezer *freezer)
{
 struct cgroup_iter it;
 struct task_struct *task;
 unsigned int nfrozen = 0, ntotal = 0;
 enum freezer_state old_state = freezer->state;

 cgroup_iter_start(cgroup, &it);
 while ((task = cgroup_iter_next(cgroup, &it))) {
  ntotal++;
  if (is_task_frozen_enough(task))
   nfrozen++;
 }

 if (old_state == CGROUP_THAWED) {
  BUG_ON(nfrozen > 0);
 } else if (old_state == CGROUP_FREEZING) {
  if (nfrozen == ntotal)
   freezer->state = CGROUP_FROZEN;
 } else {
  BUG_ON(nfrozen != ntotal);
 }

 cgroup_iter_end(cgroup, &it);
}
