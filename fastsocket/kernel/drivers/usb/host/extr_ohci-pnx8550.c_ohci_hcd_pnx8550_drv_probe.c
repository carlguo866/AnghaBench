
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENODEV ;
 int ohci_pnx8550_hc_driver ;
 scalar_t__ usb_disabled () ;
 int usb_hcd_pnx8550_probe (int *,struct platform_device*) ;

__attribute__((used)) static int ohci_hcd_pnx8550_drv_probe(struct platform_device *pdev)
{
 int ret;

 if (usb_disabled())
  return -ENODEV;

 ret = usb_hcd_pnx8550_probe(&ohci_pnx8550_hc_driver, pdev);
 return ret;
}
