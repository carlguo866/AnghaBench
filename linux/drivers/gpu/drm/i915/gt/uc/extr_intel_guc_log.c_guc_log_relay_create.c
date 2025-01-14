
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rchan {size_t subbuf_size; } ;
struct TYPE_9__ {struct rchan* channel; int lock; } ;
struct intel_guc_log {TYPE_4__ relay; TYPE_1__* vma; } ;
struct intel_guc {int dummy; } ;
struct TYPE_8__ {TYPE_2__* primary; } ;
struct drm_i915_private {TYPE_3__ drm; } ;
struct TYPE_10__ {struct drm_i915_private* i915; } ;
struct TYPE_7__ {int debugfs_root; } ;
struct TYPE_6__ {size_t size; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GEM_BUG_ON (int) ;
 TYPE_5__* guc_to_gt (struct intel_guc*) ;
 int lockdep_assert_held (int *) ;
 struct intel_guc* log_to_guc (struct intel_guc_log*) ;
 int relay_callbacks ;
 struct rchan* relay_open (char*,int ,size_t,size_t,int *,struct drm_i915_private*) ;

__attribute__((used)) static int guc_log_relay_create(struct intel_guc_log *log)
{
 struct intel_guc *guc = log_to_guc(log);
 struct drm_i915_private *dev_priv = guc_to_gt(guc)->i915;
 struct rchan *guc_log_relay_chan;
 size_t n_subbufs, subbuf_size;
 int ret;

 lockdep_assert_held(&log->relay.lock);
 GEM_BUG_ON(!log->vma);


 subbuf_size = log->vma->size;







 n_subbufs = 8;

 guc_log_relay_chan = relay_open("guc_log",
     dev_priv->drm.primary->debugfs_root,
     subbuf_size, n_subbufs,
     &relay_callbacks, dev_priv);
 if (!guc_log_relay_chan) {
  DRM_ERROR("Couldn't create relay chan for GuC logging\n");

  ret = -ENOMEM;
  return ret;
 }

 GEM_BUG_ON(guc_log_relay_chan->subbuf_size < subbuf_size);
 log->relay.channel = guc_log_relay_chan;

 return 0;
}
