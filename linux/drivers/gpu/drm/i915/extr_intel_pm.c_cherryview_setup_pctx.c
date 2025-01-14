
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int end; } ;
struct drm_i915_private {TYPE_1__ dsm; } ;
typedef int resource_size_t ;


 int DRM_DEBUG_DRIVER (char*,...) ;
 int GEM_BUG_ON (int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int U32_MAX ;
 int VLV_PCBR ;
 int VLV_PCBR_ADDR_SHIFT ;

__attribute__((used)) static void cherryview_setup_pctx(struct drm_i915_private *dev_priv)
{
 resource_size_t pctx_paddr, paddr;
 resource_size_t pctx_size = 32*1024;
 u32 pcbr;

 pcbr = I915_READ(VLV_PCBR);
 if ((pcbr >> VLV_PCBR_ADDR_SHIFT) == 0) {
  DRM_DEBUG_DRIVER("BIOS didn't set up PCBR, fixing up\n");
  paddr = dev_priv->dsm.end + 1 - pctx_size;
  GEM_BUG_ON(paddr > U32_MAX);

  pctx_paddr = (paddr & (~4095));
  I915_WRITE(VLV_PCBR, pctx_paddr);
 }

 DRM_DEBUG_DRIVER("PCBR: 0x%08x\n", I915_READ(VLV_PCBR));
}
