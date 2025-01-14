
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ on_list; scalar_t__ on_rq; int time_slice; scalar_t__ timeout; int run_list; } ;
struct TYPE_7__ {int rb_node; } ;
struct TYPE_5__ {int statistics; int * cfs_rq; int group_node; scalar_t__ vruntime; scalar_t__ nr_migrations; scalar_t__ prev_sum_exec_runtime; scalar_t__ sum_exec_runtime; scalar_t__ exec_start; scalar_t__ on_rq; } ;
struct task_struct {int * capture_control; int preempt_notifiers; TYPE_2__ rt; TYPE_3__ dl; TYPE_1__ se; scalar_t__ on_rq; } ;


 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int __dl_clear_params (struct task_struct*) ;
 int init_dl_inactive_task_timer (TYPE_3__*) ;
 int init_dl_task_timer (TYPE_3__*) ;
 int init_numa_balancing (unsigned long,struct task_struct*) ;
 int memset (int *,int ,int) ;
 int sched_rr_timeslice ;

__attribute__((used)) static void __sched_fork(unsigned long clone_flags, struct task_struct *p)
{
 p->on_rq = 0;

 p->se.on_rq = 0;
 p->se.exec_start = 0;
 p->se.sum_exec_runtime = 0;
 p->se.prev_sum_exec_runtime = 0;
 p->se.nr_migrations = 0;
 p->se.vruntime = 0;
 INIT_LIST_HEAD(&p->se.group_node);
 RB_CLEAR_NODE(&p->dl.rb_node);
 init_dl_task_timer(&p->dl);
 init_dl_inactive_task_timer(&p->dl);
 __dl_clear_params(p);

 INIT_LIST_HEAD(&p->rt.run_list);
 p->rt.timeout = 0;
 p->rt.time_slice = sched_rr_timeslice;
 p->rt.on_rq = 0;
 p->rt.on_list = 0;
 init_numa_balancing(clone_flags, p);
}
