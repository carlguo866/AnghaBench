
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_walker {scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct tcf_proto*,unsigned long,struct tcf_walker*) ;int stop; } ;
struct tcf_proto {struct cls_cgroup_head* root; } ;
struct cls_cgroup_head {int dummy; } ;


 scalar_t__ stub1 (struct tcf_proto*,unsigned long,struct tcf_walker*) ;

__attribute__((used)) static void cls_cgroup_walk(struct tcf_proto *tp, struct tcf_walker *arg)
{
 struct cls_cgroup_head *head = tp->root;

 if (arg->count < arg->skip)
  goto skip;

 if (arg->fn(tp, (unsigned long) head, arg) < 0) {
  arg->stop = 1;
  return;
 }
skip:
 arg->count++;
}
