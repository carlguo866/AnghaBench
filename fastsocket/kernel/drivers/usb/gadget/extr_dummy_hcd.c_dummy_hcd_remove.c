
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;


 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int * the_controller ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int dummy_hcd_remove (struct platform_device *pdev)
{
 struct usb_hcd *hcd;

 hcd = platform_get_drvdata (pdev);
 usb_remove_hcd (hcd);
 usb_put_hcd (hcd);
 the_controller = ((void*)0);
 return 0;
}
