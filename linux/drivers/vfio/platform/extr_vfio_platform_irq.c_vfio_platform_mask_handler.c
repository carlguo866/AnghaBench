
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_irq {int dummy; } ;


 int vfio_platform_mask (struct vfio_platform_irq*) ;

__attribute__((used)) static int vfio_platform_mask_handler(void *opaque, void *unused)
{
 struct vfio_platform_irq *irq_ctx = opaque;

 vfio_platform_mask(irq_ctx);

 return 0;
}
