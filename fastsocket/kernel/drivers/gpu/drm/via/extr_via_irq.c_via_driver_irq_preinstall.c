
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_4__ {int irq_enable_mask; int irq_pending_mask; scalar_t__ chipset; int** irq_masks; int num_irqs; scalar_t__ last_vblank_valid; int irq_map; TYPE_2__* via_irqs; } ;
typedef TYPE_1__ drm_via_private_t ;
struct TYPE_5__ {int enable_mask; int pending_mask; int irq_queue; int irq_received; } ;
typedef TYPE_2__ drm_via_irq_t ;


 int DRM_DEBUG (char*,...) ;
 int DRM_INIT_WAITQUEUE (int *) ;
 scalar_t__ VIA_DX9_0 ;
 int VIA_IRQ_VBLANK_ENABLE ;
 int VIA_IRQ_VBLANK_PENDING ;
 scalar_t__ VIA_PRO_GROUP_A ;
 int VIA_READ (int ) ;
 int VIA_REG_INTERRUPT ;
 int VIA_WRITE (int ,int) ;
 int atomic_set (int *,int ) ;
 int via_irqmap_pro_group_a ;
 int via_irqmap_unichrome ;
 int via_num_pro_group_a ;
 int via_num_unichrome ;
 int** via_pro_group_a_irqs ;
 int** via_unichrome_irqs ;
 int viadrv_acknowledge_irqs (TYPE_1__*) ;

void via_driver_irq_preinstall(struct drm_device *dev)
{
 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
 u32 status;
 drm_via_irq_t *cur_irq;
 int i;

 DRM_DEBUG("dev_priv: %p\n", dev_priv);
 if (dev_priv) {
  cur_irq = dev_priv->via_irqs;

  dev_priv->irq_enable_mask = VIA_IRQ_VBLANK_ENABLE;
  dev_priv->irq_pending_mask = VIA_IRQ_VBLANK_PENDING;

  if (dev_priv->chipset == VIA_PRO_GROUP_A ||
      dev_priv->chipset == VIA_DX9_0) {
   dev_priv->irq_masks = via_pro_group_a_irqs;
   dev_priv->num_irqs = via_num_pro_group_a;
   dev_priv->irq_map = via_irqmap_pro_group_a;
  } else {
   dev_priv->irq_masks = via_unichrome_irqs;
   dev_priv->num_irqs = via_num_unichrome;
   dev_priv->irq_map = via_irqmap_unichrome;
  }

  for (i = 0; i < dev_priv->num_irqs; ++i) {
   atomic_set(&cur_irq->irq_received, 0);
   cur_irq->enable_mask = dev_priv->irq_masks[i][0];
   cur_irq->pending_mask = dev_priv->irq_masks[i][1];
   DRM_INIT_WAITQUEUE(&cur_irq->irq_queue);
   dev_priv->irq_enable_mask |= cur_irq->enable_mask;
   dev_priv->irq_pending_mask |= cur_irq->pending_mask;
   cur_irq++;

   DRM_DEBUG("Initializing IRQ %d\n", i);
  }

  dev_priv->last_vblank_valid = 0;


  status = VIA_READ(VIA_REG_INTERRUPT);
  VIA_WRITE(VIA_REG_INTERRUPT, status &
     ~(dev_priv->irq_enable_mask));


  viadrv_acknowledge_irqs(dev_priv);
 }
}
