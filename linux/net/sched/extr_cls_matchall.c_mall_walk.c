
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_walker {scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct tcf_proto*,struct cls_mall_head*,struct tcf_walker*) ;int stop; } ;
struct tcf_proto {int root; } ;
struct cls_mall_head {scalar_t__ deleting; } ;


 struct cls_mall_head* rtnl_dereference (int ) ;
 scalar_t__ stub1 (struct tcf_proto*,struct cls_mall_head*,struct tcf_walker*) ;

__attribute__((used)) static void mall_walk(struct tcf_proto *tp, struct tcf_walker *arg,
        bool rtnl_held)
{
 struct cls_mall_head *head = rtnl_dereference(tp->root);

 if (arg->count < arg->skip)
  goto skip;

 if (!head || head->deleting)
  return;
 if (arg->fn(tp, head, arg) < 0)
  arg->stop = 1;
skip:
 arg->count++;
}
