
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {TYPE_6__* gadget; } ;
struct TYPE_10__ {TYPE_2__* out; TYPE_2__* in; } ;
struct f_acm {unsigned int ctrl_id; unsigned int data_id; int port_num; TYPE_4__ port; TYPE_2__* notify; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_9__ {int * desc; scalar_t__ enabled; } ;
struct TYPE_8__ {struct usb_composite_dev* cdev; } ;


 int EINVAL ;
 scalar_t__ config_ep_by_speed (TYPE_6__*,struct usb_function*,TYPE_2__*) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_vdbg (int *,char*,unsigned int) ;
 struct f_acm* func_to_acm (struct usb_function*) ;
 int gserial_connect (TYPE_4__*,int ) ;
 int gserial_disconnect (TYPE_4__*) ;
 int usb_ep_disable (TYPE_2__*) ;
 int usb_ep_enable (TYPE_2__*) ;

__attribute__((used)) static int acm_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_acm *acm = func_to_acm(f);
 struct usb_composite_dev *cdev = f->config->cdev;



 if (intf == acm->ctrl_id) {
  dev_vdbg(&cdev->gadget->dev,
    "reset acm control interface %d\n", intf);
  usb_ep_disable(acm->notify);

  if (!acm->notify->desc)
   if (config_ep_by_speed(cdev->gadget, f, acm->notify))
    return -EINVAL;

  usb_ep_enable(acm->notify);

 } else if (intf == acm->data_id) {
  if (acm->notify->enabled) {
   dev_dbg(&cdev->gadget->dev,
    "reset acm ttyGS%d\n", acm->port_num);
   gserial_disconnect(&acm->port);
  }
  if (!acm->port.in->desc || !acm->port.out->desc) {
   dev_dbg(&cdev->gadget->dev,
    "activate acm ttyGS%d\n", acm->port_num);
   if (config_ep_by_speed(cdev->gadget, f,
            acm->port.in) ||
       config_ep_by_speed(cdev->gadget, f,
            acm->port.out)) {
    acm->port.in->desc = ((void*)0);
    acm->port.out->desc = ((void*)0);
    return -EINVAL;
   }
  }
  gserial_connect(&acm->port, acm->port_num);

 } else
  return -EINVAL;

 return 0;
}
