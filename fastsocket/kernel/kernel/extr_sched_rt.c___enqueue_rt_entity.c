
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int run_list; } ;
struct rt_prio_array {int bitmap; struct list_head* queue; } ;
struct rt_rq {int rt_nr_running; struct rt_prio_array active; } ;
struct list_head {int dummy; } ;


 int __set_bit (int,int ) ;
 struct rt_rq* group_rt_rq (struct sched_rt_entity*) ;
 int inc_rt_tasks (struct sched_rt_entity*,struct rt_rq*) ;
 int list_add (int *,struct list_head*) ;
 int list_add_leaf_rt_rq (struct rt_rq*) ;
 int list_add_tail (int *,struct list_head*) ;
 struct rt_rq* rt_rq_of_se (struct sched_rt_entity*) ;
 scalar_t__ rt_rq_throttled (struct rt_rq*) ;
 int rt_se_prio (struct sched_rt_entity*) ;

__attribute__((used)) static void __enqueue_rt_entity(struct sched_rt_entity *rt_se, bool head)
{
 struct rt_rq *rt_rq = rt_rq_of_se(rt_se);
 struct rt_prio_array *array = &rt_rq->active;
 struct rt_rq *group_rq = group_rt_rq(rt_se);
 struct list_head *queue = array->queue + rt_se_prio(rt_se);







 if (group_rq && (rt_rq_throttled(group_rq) || !group_rq->rt_nr_running))
  return;

 if (!rt_rq->rt_nr_running)
  list_add_leaf_rt_rq(rt_rq);

 if (head)
  list_add(&rt_se->run_list, queue);
 else
  list_add_tail(&rt_se->run_list, queue);
 __set_bit(rt_se_prio(rt_se), array->bitmap);

 inc_rt_tasks(rt_se, rt_rq);
}
