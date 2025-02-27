
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bcma_hcd_device {struct platform_device* ehci_dev; struct platform_device* ohci_dev; } ;
struct bcma_device {int dummy; } ;


 int bcma_core_disable (struct bcma_device*,int ) ;
 struct bcma_hcd_device* bcma_get_drvdata (struct bcma_device*) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static void bcma_hcd_remove(struct bcma_device *dev)
{
 struct bcma_hcd_device *usb_dev = bcma_get_drvdata(dev);
 struct platform_device *ohci_dev = usb_dev->ohci_dev;
 struct platform_device *ehci_dev = usb_dev->ehci_dev;

 if (ohci_dev)
  platform_device_unregister(ohci_dev);
 if (ehci_dev)
  platform_device_unregister(ehci_dev);

 bcma_core_disable(dev, 0);
}
