
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_driver {int (* probe ) (struct sunxi_rsb_device*) ;} ;
struct sunxi_rsb_device {int irq; } ;
struct device {scalar_t__ of_node; int driver; } ;


 int ENODEV ;
 int ENOENT ;
 int EPROBE_DEFER ;
 int of_clk_set_defaults (scalar_t__,int) ;
 int of_irq_get (scalar_t__,int ) ;
 int stub1 (struct sunxi_rsb_device*) ;
 struct sunxi_rsb_device* to_sunxi_rsb_device (struct device*) ;
 struct sunxi_rsb_driver* to_sunxi_rsb_driver (int ) ;

__attribute__((used)) static int sunxi_rsb_device_probe(struct device *dev)
{
 const struct sunxi_rsb_driver *drv = to_sunxi_rsb_driver(dev->driver);
 struct sunxi_rsb_device *rdev = to_sunxi_rsb_device(dev);
 int ret;

 if (!drv->probe)
  return -ENODEV;

 if (!rdev->irq) {
  int irq = -ENOENT;

  if (dev->of_node)
   irq = of_irq_get(dev->of_node, 0);

  if (irq == -EPROBE_DEFER)
   return irq;
  if (irq < 0)
   irq = 0;

  rdev->irq = irq;
 }

 ret = of_clk_set_defaults(dev->of_node, 0);
 if (ret < 0)
  return ret;

 return drv->probe(rdev);
}
