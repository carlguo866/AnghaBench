
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {struct rt6_info* rt6_next; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct rt6_info {scalar_t__ rt6i_metric; TYPE_2__ u; } ;
struct fib6_node {struct rt6_info* leaf; } ;


 struct rt6_info* find_match (struct rt6_info*,int,int,int*,struct rt6_info*,int*) ;

__attribute__((used)) static struct rt6_info *find_rr_leaf(struct fib6_node *fn,
         struct rt6_info *rr_head,
         u32 metric, int oif, int strict,
         bool *do_rr)
{
 struct rt6_info *rt, *match;
 int mpri = -1;

 match = ((void*)0);
 for (rt = rr_head; rt && rt->rt6i_metric == metric;
      rt = rt->u.dst.rt6_next)
  match = find_match(rt, oif, strict, &mpri, match, do_rr);
 for (rt = fn->leaf; rt && rt != rr_head && rt->rt6i_metric == metric;
      rt = rt->u.dst.rt6_next)
  match = find_match(rt, oif, strict, &mpri, match, do_rr);

 return match;
}
