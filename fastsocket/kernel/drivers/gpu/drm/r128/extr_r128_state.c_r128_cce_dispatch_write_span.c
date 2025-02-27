
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int y ;
typedef int x ;
typedef int u8 ;
typedef int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {int depth_fmt; int depth_pitch_offset_c; } ;
typedef TYPE_1__ drm_r128_private_t ;
struct TYPE_5__ {int n; scalar_t__ mask; scalar_t__ buffer; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ drm_r128_depth_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CCE_PACKET3 (int ,int) ;
 scalar_t__ DRM_COPY_FROM_USER (int*,scalar_t__,int) ;
 int DRM_DEBUG (char*) ;
 int EFAULT ;
 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OUT_RING (int) ;
 int R128_CNTL_PAINT_MULTI ;
 int R128_GMC_BRUSH_SOLID_COLOR ;
 int R128_GMC_CLR_CMP_CNTL_DIS ;
 int R128_GMC_DST_PITCH_OFFSET_CNTL ;
 int R128_GMC_SRC_DATATYPE_COLOR ;
 int R128_GMC_WR_MSK_DIS ;
 int R128_ROP3_P ;
 int RING_LOCALS ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;

__attribute__((used)) static int r128_cce_dispatch_write_span(struct drm_device *dev,
     drm_r128_depth_t *depth)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 int count, x, y;
 u32 *buffer;
 u8 *mask;
 int i, buffer_size, mask_size;
 RING_LOCALS;
 DRM_DEBUG("\n");

 count = depth->n;
 if (count > 4096 || count <= 0)
  return -EMSGSIZE;

 if (DRM_COPY_FROM_USER(&x, depth->x, sizeof(x)))
  return -EFAULT;
 if (DRM_COPY_FROM_USER(&y, depth->y, sizeof(y)))
  return -EFAULT;

 buffer_size = depth->n * sizeof(u32);
 buffer = kmalloc(buffer_size, GFP_KERNEL);
 if (buffer == ((void*)0))
  return -ENOMEM;
 if (DRM_COPY_FROM_USER(buffer, depth->buffer, buffer_size)) {
  kfree(buffer);
  return -EFAULT;
 }

 mask_size = depth->n * sizeof(u8);
 if (depth->mask) {
  mask = kmalloc(mask_size, GFP_KERNEL);
  if (mask == ((void*)0)) {
   kfree(buffer);
   return -ENOMEM;
  }
  if (DRM_COPY_FROM_USER(mask, depth->mask, mask_size)) {
   kfree(buffer);
   kfree(mask);
   return -EFAULT;
  }

  for (i = 0; i < count; i++, x++) {
   if (mask[i]) {
    BEGIN_RING(6);

    OUT_RING(CCE_PACKET3(R128_CNTL_PAINT_MULTI, 4));
    OUT_RING(R128_GMC_DST_PITCH_OFFSET_CNTL |
      R128_GMC_BRUSH_SOLID_COLOR |
      (dev_priv->depth_fmt << 8) |
      R128_GMC_SRC_DATATYPE_COLOR |
      R128_ROP3_P |
      R128_GMC_CLR_CMP_CNTL_DIS |
      R128_GMC_WR_MSK_DIS);

    OUT_RING(dev_priv->depth_pitch_offset_c);
    OUT_RING(buffer[i]);

    OUT_RING((x << 16) | y);
    OUT_RING((1 << 16) | 1);

    ADVANCE_RING();
   }
  }

  kfree(mask);
 } else {
  for (i = 0; i < count; i++, x++) {
   BEGIN_RING(6);

   OUT_RING(CCE_PACKET3(R128_CNTL_PAINT_MULTI, 4));
   OUT_RING(R128_GMC_DST_PITCH_OFFSET_CNTL |
     R128_GMC_BRUSH_SOLID_COLOR |
     (dev_priv->depth_fmt << 8) |
     R128_GMC_SRC_DATATYPE_COLOR |
     R128_ROP3_P |
     R128_GMC_CLR_CMP_CNTL_DIS |
     R128_GMC_WR_MSK_DIS);

   OUT_RING(dev_priv->depth_pitch_offset_c);
   OUT_RING(buffer[i]);

   OUT_RING((x << 16) | y);
   OUT_RING((1 << 16) | 1);

   ADVANCE_RING();
  }
 }

 kfree(buffer);

 return 0;
}
