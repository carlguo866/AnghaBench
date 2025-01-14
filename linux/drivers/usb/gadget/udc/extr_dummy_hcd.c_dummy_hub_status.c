
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct dummy_hcd {int port_status; scalar_t__ rh_state; TYPE_1__* dum; int re_timeout; scalar_t__ resuming; } ;
struct TYPE_2__ {int lock; } ;


 scalar_t__ DUMMY_RH_SUSPENDED ;
 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 int PORT_C_MASK ;
 int USB_PORT_STAT_C_SUSPEND ;
 int USB_PORT_STAT_SUSPEND ;
 int dev_dbg (int ,char*,int) ;
 int dummy_dev (struct dummy_hcd*) ;
 struct dummy_hcd* hcd_to_dummy_hcd (struct usb_hcd*) ;
 int jiffies ;
 int set_link_state (struct dummy_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after_eq (int ,int ) ;
 int usb_hcd_resume_root_hub (struct usb_hcd*) ;

__attribute__((used)) static int dummy_hub_status(struct usb_hcd *hcd, char *buf)
{
 struct dummy_hcd *dum_hcd;
 unsigned long flags;
 int retval = 0;

 dum_hcd = hcd_to_dummy_hcd(hcd);

 spin_lock_irqsave(&dum_hcd->dum->lock, flags);
 if (!HCD_HW_ACCESSIBLE(hcd))
  goto done;

 if (dum_hcd->resuming && time_after_eq(jiffies, dum_hcd->re_timeout)) {
  dum_hcd->port_status |= (USB_PORT_STAT_C_SUSPEND << 16);
  dum_hcd->port_status &= ~USB_PORT_STAT_SUSPEND;
  set_link_state(dum_hcd);
 }

 if ((dum_hcd->port_status & PORT_C_MASK) != 0) {
  *buf = (1 << 1);
  dev_dbg(dummy_dev(dum_hcd), "port status 0x%08x has changes\n",
    dum_hcd->port_status);
  retval = 1;
  if (dum_hcd->rh_state == DUMMY_RH_SUSPENDED)
   usb_hcd_resume_root_hub(hcd);
 }
done:
 spin_unlock_irqrestore(&dum_hcd->dum->lock, flags);
 return retval;
}
