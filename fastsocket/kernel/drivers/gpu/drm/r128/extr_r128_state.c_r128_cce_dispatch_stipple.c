
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int * dev_private; } ;
typedef int drm_r128_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CCE_PACKET0 (int ,int) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int ) ;
 int R128_BRUSH_DATA0 ;
 int RING_LOCALS ;

__attribute__((used)) static void r128_cce_dispatch_stipple(struct drm_device *dev, u32 *stipple)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 int i;
 RING_LOCALS;
 DRM_DEBUG("\n");

 BEGIN_RING(33);

 OUT_RING(CCE_PACKET0(R128_BRUSH_DATA0, 31));
 for (i = 0; i < 32; i++)
  OUT_RING(stipple[i]);

 ADVANCE_RING();
}
