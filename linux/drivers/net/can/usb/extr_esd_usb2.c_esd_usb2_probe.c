
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_7__ {int version; scalar_t__ nets; } ;
struct TYPE_6__ {scalar_t__ drv_version; scalar_t__ flags; scalar_t__ rsvd; } ;
struct TYPE_5__ {int len; int cmd; } ;
struct TYPE_8__ {TYPE_3__ version_reply; TYPE_2__ version; TYPE_1__ hdr; } ;
struct esd_usb2_msg {int net_count; TYPE_4__ msg; int version; int rx_submitted; int udev; } ;
struct esd_usb2 {int net_count; TYPE_4__ msg; int version; int rx_submitted; int udev; } ;


 int CMD_VERSION ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_attr_firmware ;
 int dev_attr_hardware ;
 int dev_attr_nets ;
 int dev_err (int *,char*) ;
 scalar_t__ device_create_file (int *,int *) ;
 int esd_usb2_probe_one_net (struct usb_interface*,int) ;
 int esd_usb2_send_msg (struct esd_usb2_msg*,struct esd_usb2_msg*) ;
 int esd_usb2_wait_msg (struct esd_usb2_msg*,struct esd_usb2_msg*) ;
 int init_usb_anchor (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct esd_usb2_msg*) ;
 struct esd_usb2_msg* kmalloc (int,int ) ;
 struct esd_usb2_msg* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int usb_set_intfdata (struct usb_interface*,struct esd_usb2_msg*) ;

__attribute__((used)) static int esd_usb2_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct esd_usb2 *dev;
 struct esd_usb2_msg *msg;
 int i, err;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  err = -ENOMEM;
  goto done;
 }

 dev->udev = interface_to_usbdev(intf);

 init_usb_anchor(&dev->rx_submitted);

 usb_set_intfdata(intf, dev);

 msg = kmalloc(sizeof(*msg), GFP_KERNEL);
 if (!msg) {
  err = -ENOMEM;
  goto free_msg;
 }


 msg->msg.hdr.cmd = CMD_VERSION;
 msg->msg.hdr.len = 2;
 msg->msg.version.rsvd = 0;
 msg->msg.version.flags = 0;
 msg->msg.version.drv_version = 0;

 err = esd_usb2_send_msg(dev, msg);
 if (err < 0) {
  dev_err(&intf->dev, "sending version message failed\n");
  goto free_msg;
 }

 err = esd_usb2_wait_msg(dev, msg);
 if (err < 0) {
  dev_err(&intf->dev, "no version message answer\n");
  goto free_msg;
 }

 dev->net_count = (int)msg->msg.version_reply.nets;
 dev->version = le32_to_cpu(msg->msg.version_reply.version);

 if (device_create_file(&intf->dev, &dev_attr_firmware))
  dev_err(&intf->dev,
   "Couldn't create device file for firmware\n");

 if (device_create_file(&intf->dev, &dev_attr_hardware))
  dev_err(&intf->dev,
   "Couldn't create device file for hardware\n");

 if (device_create_file(&intf->dev, &dev_attr_nets))
  dev_err(&intf->dev,
   "Couldn't create device file for nets\n");


 for (i = 0; i < dev->net_count; i++)
  esd_usb2_probe_one_net(intf, i);

free_msg:
 kfree(msg);
 if (err)
  kfree(dev);
done:
 return err;
}
