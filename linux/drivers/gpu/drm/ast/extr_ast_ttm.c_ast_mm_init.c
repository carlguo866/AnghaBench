
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vram_mm {int dummy; } ;
struct drm_device {int pdev; } ;
struct ast_private {int fb_mtrr; int vram_size; struct drm_device* dev; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ IS_ERR (struct drm_vram_mm*) ;
 int PTR_ERR (struct drm_vram_mm*) ;
 int arch_io_reserve_memtype_wc (int ,int ) ;
 int arch_phys_wc_add (int ,int ) ;
 int drm_gem_vram_mm_funcs ;
 struct drm_vram_mm* drm_vram_helper_alloc_mm (struct drm_device*,int ,int ,int *) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;

int ast_mm_init(struct ast_private *ast)
{
 struct drm_vram_mm *vmm;
 int ret;
 struct drm_device *dev = ast->dev;

 vmm = drm_vram_helper_alloc_mm(
  dev, pci_resource_start(dev->pdev, 0),
  ast->vram_size, &drm_gem_vram_mm_funcs);
 if (IS_ERR(vmm)) {
  ret = PTR_ERR(vmm);
  DRM_ERROR("Error initializing VRAM MM; %d\n", ret);
  return ret;
 }

 arch_io_reserve_memtype_wc(pci_resource_start(dev->pdev, 0),
       pci_resource_len(dev->pdev, 0));
 ast->fb_mtrr = arch_phys_wc_add(pci_resource_start(dev->pdev, 0),
     pci_resource_len(dev->pdev, 0));

 return 0;
}
