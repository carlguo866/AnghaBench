
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct drm_clip_rect {int x1; int y1; int x2; int y2; } ;
struct TYPE_4__ {int nbox; int last_frame; struct drm_clip_rect* boxes; } ;
typedef TYPE_1__ drm_r128_sarea_t ;
struct TYPE_5__ {int color_fmt; scalar_t__ current_page; int back_pitch_offset_c; int front_pitch_offset_c; TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_r128_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CCE_PACKET0 (int ,int ) ;
 int CCE_PACKET3 (int ,int) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int) ;
 int R128_CNTL_BITBLT_MULTI ;
 int R128_DP_SRC_SOURCE_MEMORY ;
 int R128_GMC_AUX_CLIP_DIS ;
 int R128_GMC_BRUSH_NONE ;
 int R128_GMC_CLR_CMP_CNTL_DIS ;
 int R128_GMC_DST_PITCH_OFFSET_CNTL ;
 int R128_GMC_SRC_DATATYPE_COLOR ;
 int R128_GMC_SRC_PITCH_OFFSET_CNTL ;
 int R128_GMC_WR_MSK_DIS ;
 int R128_LAST_FRAME_REG ;
 int R128_ROP3_S ;
 int RING_LOCALS ;
 int r128_cce_performance_boxes (TYPE_2__*) ;

__attribute__((used)) static void r128_cce_dispatch_swap(struct drm_device *dev)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 drm_r128_sarea_t *sarea_priv = dev_priv->sarea_priv;
 int nbox = sarea_priv->nbox;
 struct drm_clip_rect *pbox = sarea_priv->boxes;
 int i;
 RING_LOCALS;
 DRM_DEBUG("\n");







 for (i = 0; i < nbox; i++) {
  int x = pbox[i].x1;
  int y = pbox[i].y1;
  int w = pbox[i].x2 - x;
  int h = pbox[i].y2 - y;

  BEGIN_RING(7);

  OUT_RING(CCE_PACKET3(R128_CNTL_BITBLT_MULTI, 5));
  OUT_RING(R128_GMC_SRC_PITCH_OFFSET_CNTL |
    R128_GMC_DST_PITCH_OFFSET_CNTL |
    R128_GMC_BRUSH_NONE |
    (dev_priv->color_fmt << 8) |
    R128_GMC_SRC_DATATYPE_COLOR |
    R128_ROP3_S |
    R128_DP_SRC_SOURCE_MEMORY |
    R128_GMC_CLR_CMP_CNTL_DIS |
    R128_GMC_AUX_CLIP_DIS | R128_GMC_WR_MSK_DIS);



  if (dev_priv->current_page == 0) {
   OUT_RING(dev_priv->back_pitch_offset_c);
   OUT_RING(dev_priv->front_pitch_offset_c);
  } else {
   OUT_RING(dev_priv->front_pitch_offset_c);
   OUT_RING(dev_priv->back_pitch_offset_c);
  }

  OUT_RING((x << 16) | y);
  OUT_RING((x << 16) | y);
  OUT_RING((w << 16) | h);

  ADVANCE_RING();
 }





 dev_priv->sarea_priv->last_frame++;

 BEGIN_RING(2);

 OUT_RING(CCE_PACKET0(R128_LAST_FRAME_REG, 0));
 OUT_RING(dev_priv->sarea_priv->last_frame);

 ADVANCE_RING();
}
