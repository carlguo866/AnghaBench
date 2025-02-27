
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu_workload {size_t ring_id; int req; struct intel_vgpu* vgpu; } ;
struct intel_vgpu_submission {int * shadow; } ;
struct intel_vgpu {TYPE_2__* gvt; struct intel_vgpu_submission submission; } ;
struct i915_request {int dummy; } ;
struct TYPE_3__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_4__ {struct drm_i915_private* dev_priv; } ;


 scalar_t__ IS_ERR (struct i915_request*) ;
 int PTR_ERR (struct i915_request*) ;
 int gvt_vgpu_err (char*) ;
 struct i915_request* i915_request_create (int ) ;
 int i915_request_get (struct i915_request*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int
intel_gvt_workload_req_alloc(struct intel_vgpu_workload *workload)
{
 struct intel_vgpu *vgpu = workload->vgpu;
 struct intel_vgpu_submission *s = &vgpu->submission;
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
 struct i915_request *rq;

 lockdep_assert_held(&dev_priv->drm.struct_mutex);

 if (workload->req)
  return 0;

 rq = i915_request_create(s->shadow[workload->ring_id]);
 if (IS_ERR(rq)) {
  gvt_vgpu_err("fail to allocate gem request\n");
  return PTR_ERR(rq);
 }

 workload->req = i915_request_get(rq);
 return 0;
}
