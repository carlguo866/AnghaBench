
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int efficient_freq; } ;
struct TYPE_4__ {TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_2__ gt_pm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int intel_gpu_freq (struct drm_i915_private*,int ) ;
 struct drm_i915_private* kdev_minor_to_i915 (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t vlv_rpe_freq_mhz_show(struct device *kdev,
         struct device_attribute *attr, char *buf)
{
 struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);

 return snprintf(buf, PAGE_SIZE, "%d\n",
   intel_gpu_freq(dev_priv,
           dev_priv->gt_pm.rps.efficient_freq));
}
