
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int device; int dev; } ;
struct intel_device_info {scalar_t__ gen; int gen_mask; } ;
struct TYPE_3__ {struct pci_dev* pdev; struct drm_i915_private* dev_private; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_4__ {int device_id; } ;


 scalar_t__ BITS_PER_TYPE (int ) ;
 int BUG_ON (int) ;
 int ENOMEM ;
 struct drm_i915_private* ERR_PTR (int) ;
 int GFP_KERNEL ;
 TYPE_2__* RUNTIME_INFO (struct drm_i915_private*) ;
 int driver ;
 int drm_dev_init (TYPE_1__*,int *,int *) ;
 int kfree (struct drm_i915_private*) ;
 struct drm_i915_private* kzalloc (int,int ) ;
 int memcpy (struct intel_device_info*,struct intel_device_info const*,int) ;
 struct intel_device_info* mkwrite_device_info (struct drm_i915_private*) ;
 int pci_set_drvdata (struct pci_dev*,struct drm_i915_private*) ;

__attribute__((used)) static struct drm_i915_private *
i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 const struct intel_device_info *match_info =
  (struct intel_device_info *)ent->driver_data;
 struct intel_device_info *device_info;
 struct drm_i915_private *i915;
 int err;

 i915 = kzalloc(sizeof(*i915), GFP_KERNEL);
 if (!i915)
  return ERR_PTR(-ENOMEM);

 err = drm_dev_init(&i915->drm, &driver, &pdev->dev);
 if (err) {
  kfree(i915);
  return ERR_PTR(err);
 }

 i915->drm.dev_private = i915;

 i915->drm.pdev = pdev;
 pci_set_drvdata(pdev, i915);


 device_info = mkwrite_device_info(i915);
 memcpy(device_info, match_info, sizeof(*device_info));
 RUNTIME_INFO(i915)->device_id = pdev->device;

 BUG_ON(device_info->gen > BITS_PER_TYPE(device_info->gen_mask));

 return i915;
}
