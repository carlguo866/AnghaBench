
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ start; } ;
struct i915_vma {TYPE_1__ node; } ;
struct TYPE_4__ {int context; } ;
struct i915_request {TYPE_2__ fence; } ;


 scalar_t__ seqno_offset (int ) ;

__attribute__((used)) static u64 hws_address(const struct i915_vma *hws,
         const struct i915_request *rq)
{
 return hws->node.start + seqno_offset(rq->fence.context);
}
