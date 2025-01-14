
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int gt; } ;


 int EMIT_FLUSH ;
 int EMIT_INVALIDATE ;
 int INTEL_GT_SCRATCH_FIELD_DEFAULT ;
 scalar_t__ IS_ERR (int*) ;
 int MI_FLUSH ;
 int MI_MEM_VIRTUAL ;
 int MI_NO_WRITE_FLUSH ;
 int MI_READ_FLUSH ;
 int MI_STORE_DWORD_IMM ;
 int PTR_ERR (int*) ;
 int intel_gt_scratch_offset (int ,int ) ;
 int intel_ring_advance (struct i915_request*,int*) ;
 int* intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int
gen2_render_ring_flush(struct i915_request *rq, u32 mode)
{
 unsigned int num_store_dw;
 u32 cmd, *cs;

 cmd = MI_FLUSH;
 num_store_dw = 0;
 if (mode & EMIT_INVALIDATE)
  cmd |= MI_READ_FLUSH;
 if (mode & EMIT_FLUSH)
  num_store_dw = 4;

 cs = intel_ring_begin(rq, 2 + 3 * num_store_dw);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = cmd;
 while (num_store_dw--) {
  *cs++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
  *cs++ = intel_gt_scratch_offset(rq->engine->gt,
      INTEL_GT_SCRATCH_FIELD_DEFAULT);
  *cs++ = 0;
 }
 *cs++ = MI_FLUSH | MI_NO_WRITE_FLUSH;

 intel_ring_advance(rq, cs);

 return 0;
}
