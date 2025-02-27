
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int y ;
typedef int x ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {int depth_fmt; int depth_pitch_offset_c; int span_pitch_offset_c; } ;
typedef TYPE_1__ drm_r128_private_t ;
struct TYPE_5__ {int n; int y; int x; } ;
typedef TYPE_2__ drm_r128_depth_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CCE_PACKET3 (int ,int) ;
 int DRM_DEBUG (char*) ;
 int EFAULT ;
 int EMSGSIZE ;
 int OUT_RING (int) ;
 int R128_CNTL_BITBLT_MULTI ;
 int R128_DP_SRC_SOURCE_MEMORY ;
 int R128_GMC_BRUSH_NONE ;
 int R128_GMC_CLR_CMP_CNTL_DIS ;
 int R128_GMC_DST_PITCH_OFFSET_CNTL ;
 int R128_GMC_SRC_DATATYPE_COLOR ;
 int R128_GMC_SRC_PITCH_OFFSET_CNTL ;
 int R128_GMC_WR_MSK_DIS ;
 int R128_ROP3_S ;
 int RING_LOCALS ;
 scalar_t__ copy_from_user (int*,int ,int) ;

__attribute__((used)) static int r128_cce_dispatch_read_span(struct drm_device *dev,
           drm_r128_depth_t *depth)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 int count, x, y;
 RING_LOCALS;
 DRM_DEBUG("\n");

 count = depth->n;
 if (count > 4096 || count <= 0)
  return -EMSGSIZE;

 if (copy_from_user(&x, depth->x, sizeof(x)))
  return -EFAULT;
 if (copy_from_user(&y, depth->y, sizeof(y)))
  return -EFAULT;

 BEGIN_RING(7);

 OUT_RING(CCE_PACKET3(R128_CNTL_BITBLT_MULTI, 5));
 OUT_RING(R128_GMC_SRC_PITCH_OFFSET_CNTL |
   R128_GMC_DST_PITCH_OFFSET_CNTL |
   R128_GMC_BRUSH_NONE |
   (dev_priv->depth_fmt << 8) |
   R128_GMC_SRC_DATATYPE_COLOR |
   R128_ROP3_S |
   R128_DP_SRC_SOURCE_MEMORY |
   R128_GMC_CLR_CMP_CNTL_DIS | R128_GMC_WR_MSK_DIS);

 OUT_RING(dev_priv->depth_pitch_offset_c);
 OUT_RING(dev_priv->span_pitch_offset_c);

 OUT_RING((x << 16) | y);
 OUT_RING((0 << 16) | 0);
 OUT_RING((count << 16) | 1);

 ADVANCE_RING();

 return 0;
}
