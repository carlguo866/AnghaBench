
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sched_node {int dummy; } ;


 int i915_request_completed (int ) ;
 int node_to_request (struct i915_sched_node const*) ;

__attribute__((used)) static inline bool node_signaled(const struct i915_sched_node *node)
{
 return i915_request_completed(node_to_request(node));
}
