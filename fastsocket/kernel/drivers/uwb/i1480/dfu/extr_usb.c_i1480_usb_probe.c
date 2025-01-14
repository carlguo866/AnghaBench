
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {int dummy; } ;
struct usb_interface {int num_altsetting; struct device dev; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct i1480 {int buf_size; char* pre_fw_name; char* mac_fw_name; char* mac_fw_name_deprecate; char* phy_fw_name; struct i1480_usb* cmd_buf; int cmd; int wait_init_done; int * rc_setup; int read; int write; struct device* dev; struct i1480_usb* evt_buf; } ;
struct i1480_usb {int usb_dev; struct i1480 i1480; } ;
struct TYPE_8__ {int idProduct; } ;
struct TYPE_9__ {TYPE_3__ descriptor; } ;
struct TYPE_6__ {int bInterfaceNumber; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*,int) ;
 int i1480_fw_upload (struct i1480*) ;
 int i1480_usb_cmd ;
 int i1480_usb_create (struct i1480_usb*,struct usb_interface*) ;
 int i1480_usb_destroy (struct i1480_usb*) ;
 int i1480_usb_init (struct i1480_usb*) ;
 int i1480_usb_read ;
 int i1480_usb_wait_init_done ;
 int i1480_usb_write ;
 TYPE_4__* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct i1480_usb*) ;
 struct i1480_usb* kmalloc (int,int ) ;
 struct i1480_usb* kzalloc (int,int ) ;
 int usb_reset_device (int ) ;
 int usb_set_interface (TYPE_4__*,int ,int) ;

__attribute__((used)) static
int i1480_usb_probe(struct usb_interface *iface, const struct usb_device_id *id)
{
 struct i1480_usb *i1480_usb;
 struct i1480 *i1480;
 struct device *dev = &iface->dev;
 int result;

 result = -ENODEV;
 if (iface->cur_altsetting->desc.bInterfaceNumber != 0) {
  dev_dbg(dev, "not attaching to iface %d\n",
   iface->cur_altsetting->desc.bInterfaceNumber);
  goto error;
 }
 if (iface->num_altsetting > 1
     && interface_to_usbdev(iface)->descriptor.idProduct == 0xbabe) {

  result = usb_set_interface(interface_to_usbdev(iface), 0, 1);
  if (result < 0)
   dev_warn(dev,
     "can't set altsetting 1 on iface 0: %d\n",
     result);
 }

 result = -ENOMEM;
 i1480_usb = kzalloc(sizeof(*i1480_usb), GFP_KERNEL);
 if (i1480_usb == ((void*)0)) {
  dev_err(dev, "Unable to allocate instance\n");
  goto error;
 }
 i1480_usb_init(i1480_usb);

 i1480 = &i1480_usb->i1480;
 i1480->buf_size = 512;
 i1480->cmd_buf = kmalloc(2 * i1480->buf_size, GFP_KERNEL);
 if (i1480->cmd_buf == ((void*)0)) {
  dev_err(dev, "Cannot allocate transfer buffers\n");
  result = -ENOMEM;
  goto error_buf_alloc;
 }
 i1480->evt_buf = i1480->cmd_buf + i1480->buf_size;

 result = i1480_usb_create(i1480_usb, iface);
 if (result < 0) {
  dev_err(dev, "Cannot create instance: %d\n", result);
  goto error_create;
 }


 i1480->pre_fw_name = "i1480-pre-phy-0.0.bin";
 i1480->mac_fw_name = "i1480-usb-0.0.bin";
 i1480->mac_fw_name_deprecate = "ptc-0.0.bin";
 i1480->phy_fw_name = "i1480-phy-0.0.bin";
 i1480->dev = &iface->dev;
 i1480->write = i1480_usb_write;
 i1480->read = i1480_usb_read;
 i1480->rc_setup = ((void*)0);
 i1480->wait_init_done = i1480_usb_wait_init_done;
 i1480->cmd = i1480_usb_cmd;

 result = i1480_fw_upload(&i1480_usb->i1480);
 if (result >= 0) {
  usb_reset_device(i1480_usb->usb_dev);
  result = -ENODEV;
 }
 i1480_usb_destroy(i1480_usb);
error_create:
 kfree(i1480->cmd_buf);
error_buf_alloc:
 kfree(i1480_usb);
error:
 return result;
}
