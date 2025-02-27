
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
struct max3421_hcd {int urb_done; int lock; struct urb* curr_urb; } ;


 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_giveback_urb (struct usb_hcd*,struct urb*,int) ;
 int usb_hcd_unlink_urb_from_ep (struct usb_hcd*,struct urb*) ;

__attribute__((used)) static int
max3421_urb_done(struct usb_hcd *hcd)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 unsigned long flags;
 struct urb *urb;
 int status;

 status = max3421_hcd->urb_done;
 max3421_hcd->urb_done = 0;
 if (status > 0)
  status = 0;
 urb = max3421_hcd->curr_urb;
 if (urb) {
  max3421_hcd->curr_urb = ((void*)0);
  spin_lock_irqsave(&max3421_hcd->lock, flags);
  usb_hcd_unlink_urb_from_ep(hcd, urb);
  spin_unlock_irqrestore(&max3421_hcd->lock, flags);


  usb_hcd_giveback_urb(hcd, urb, status);
 }
 return 1;
}
