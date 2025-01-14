
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_radeon_master_private {TYPE_1__* sarea_priv; } ;
struct drm_master {struct drm_radeon_master_private* driver_priv; } ;
struct drm_device {int dummy; } ;
struct drm_buf {int pending; scalar_t__ used; TYPE_2__* dev_private; } ;
struct TYPE_4__ {scalar_t__ age; } ;
typedef TYPE_2__ drm_radeon_buf_priv_t ;
struct TYPE_3__ {scalar_t__ last_dispatch; } ;



__attribute__((used)) static void r300_discard_buffer(struct drm_device *dev, struct drm_master *master, struct drm_buf *buf)
{
 drm_radeon_buf_priv_t *buf_priv = buf->dev_private;
 struct drm_radeon_master_private *master_priv = master->driver_priv;

 buf_priv->age = ++master_priv->sarea_priv->last_dispatch;
 buf->pending = 1;
 buf->used = 0;
}
