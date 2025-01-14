
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int speed; } ;
struct cdns3_device {TYPE_2__ gadget; int lock; TYPE_3__* gadget_driver; TYPE_1__* regs; } ;
struct TYPE_9__ {int (* resume ) (TYPE_2__*) ;int (* suspend ) (TYPE_2__*) ;} ;
struct TYPE_7__ {int drbl; } ;


 int USB_ISTS_CON2I ;
 int USB_ISTS_CONI ;
 int USB_ISTS_DIS2I ;
 int USB_ISTS_DISI ;
 int USB_ISTS_L1ENTI ;
 int USB_ISTS_L2ENTI ;
 int USB_ISTS_L2EXTI ;
 int USB_ISTS_U2RESI ;
 int USB_ISTS_U3ENTI ;
 int USB_ISTS_U3EXTI ;
 int USB_ISTS_UHRESI ;
 int USB_ISTS_UWRESI ;
 int USB_SPEED_UNKNOWN ;
 int USB_STATE_NOTATTACHED ;
 int USB_STATE_POWERED ;
 int __cdns3_gadget_wakeup (struct cdns3_device*) ;
 int cdns3_disconnect_gadget (struct cdns3_device*) ;
 int cdns3_ep0_config (struct cdns3_device*) ;
 int cdns3_get_speed (struct cdns3_device*) ;
 int cdns3_hw_reset_eps_config (struct cdns3_device*) ;
 scalar_t__ readl (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int trace_cdns3_usb_irq (struct cdns3_device*,int) ;
 int usb_gadget_set_state (TYPE_2__*,int ) ;
 int usb_gadget_udc_reset (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void cdns3_check_usb_interrupt_proceed(struct cdns3_device *priv_dev,
           u32 usb_ists)
{
 int speed = 0;

 trace_cdns3_usb_irq(priv_dev, usb_ists);
 if (usb_ists & USB_ISTS_L1ENTI) {





  if (readl(&priv_dev->regs->drbl))
   __cdns3_gadget_wakeup(priv_dev);
 }


 if (usb_ists & (USB_ISTS_CON2I | USB_ISTS_CONI)) {
  speed = cdns3_get_speed(priv_dev);
  priv_dev->gadget.speed = speed;
  usb_gadget_set_state(&priv_dev->gadget, USB_STATE_POWERED);
  cdns3_ep0_config(priv_dev);
 }


 if (usb_ists & (USB_ISTS_DIS2I | USB_ISTS_DISI)) {
  cdns3_disconnect_gadget(priv_dev);
  priv_dev->gadget.speed = USB_SPEED_UNKNOWN;
  usb_gadget_set_state(&priv_dev->gadget, USB_STATE_NOTATTACHED);
  cdns3_hw_reset_eps_config(priv_dev);
 }

 if (usb_ists & (USB_ISTS_L2ENTI | USB_ISTS_U3ENTI)) {
  if (priv_dev->gadget_driver &&
      priv_dev->gadget_driver->suspend) {
   spin_unlock(&priv_dev->lock);
   priv_dev->gadget_driver->suspend(&priv_dev->gadget);
   spin_lock(&priv_dev->lock);
  }
 }

 if (usb_ists & (USB_ISTS_L2EXTI | USB_ISTS_U3EXTI)) {
  if (priv_dev->gadget_driver &&
      priv_dev->gadget_driver->resume) {
   spin_unlock(&priv_dev->lock);
   priv_dev->gadget_driver->resume(&priv_dev->gadget);
   spin_lock(&priv_dev->lock);
  }
 }


 if (usb_ists & (USB_ISTS_UWRESI | USB_ISTS_UHRESI | USB_ISTS_U2RESI)) {
  if (priv_dev->gadget_driver) {
   spin_unlock(&priv_dev->lock);
   usb_gadget_udc_reset(&priv_dev->gadget,
          priv_dev->gadget_driver);
   spin_lock(&priv_dev->lock);


   speed = cdns3_get_speed(priv_dev);
   priv_dev->gadget.speed = speed;
   cdns3_hw_reset_eps_config(priv_dev);
   cdns3_ep0_config(priv_dev);
  }
 }
}
