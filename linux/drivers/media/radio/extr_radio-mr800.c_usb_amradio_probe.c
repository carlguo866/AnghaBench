
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_10__ {int name; int release; TYPE_5__* ctrl_handler; } ;
struct TYPE_11__ {int error; } ;
struct TYPE_9__ {int device_caps; int * lock; int release; int * ioctl_ops; int * fops; TYPE_3__* v4l2_dev; int name; } ;
struct amradio_device {double curfreq; struct amradio_device* buffer; TYPE_3__ v4l2_dev; TYPE_5__ hdl; TYPE_1__ vdev; struct usb_interface* intf; int usbdev; int lock; } ;


 int BUFFER_LENGTH ;
 int ENOMEM ;
 double FREQ_MUL ;
 int GFP_KERNEL ;
 int V4L2_CAP_HW_FREQ_SEEK ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_TUNER ;
 int V4L2_CID_AUDIO_MUTE ;
 int VFL_TYPE_RADIO ;
 int dev_err (int *,char*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct amradio_device*) ;
 struct amradio_device* kmalloc (int ,int ) ;
 struct amradio_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int radio_nr ;
 int strscpy (int ,int ,int) ;
 int usb_amradio_ctrl_ops ;
 int usb_amradio_fops ;
 int usb_amradio_init (struct amradio_device*) ;
 int usb_amradio_ioctl_ops ;
 int usb_amradio_release ;
 int usb_set_intfdata (struct usb_interface*,TYPE_3__*) ;
 int v4l2_ctrl_handler_free (TYPE_5__*) ;
 int v4l2_ctrl_handler_init (TYPE_5__*,int) ;
 int v4l2_ctrl_new_std (TYPE_5__*,int *,int ,int ,int,int,int) ;
 int v4l2_device_register (int *,TYPE_3__*) ;
 int v4l2_device_unregister (TYPE_3__*) ;
 int video_device_release_empty ;
 int video_register_device (TYPE_1__*,int ,int ) ;
 int video_set_drvdata (TYPE_1__*,struct amradio_device*) ;

__attribute__((used)) static int usb_amradio_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct amradio_device *radio;
 int retval;

 radio = kzalloc(sizeof(struct amradio_device), GFP_KERNEL);

 if (!radio) {
  dev_err(&intf->dev, "kmalloc for amradio_device failed\n");
  retval = -ENOMEM;
  goto err;
 }

 radio->buffer = kmalloc(BUFFER_LENGTH, GFP_KERNEL);

 if (!radio->buffer) {
  dev_err(&intf->dev, "kmalloc for radio->buffer failed\n");
  retval = -ENOMEM;
  goto err_nobuf;
 }

 retval = v4l2_device_register(&intf->dev, &radio->v4l2_dev);
 if (retval < 0) {
  dev_err(&intf->dev, "couldn't register v4l2_device\n");
  goto err_v4l2;
 }

 v4l2_ctrl_handler_init(&radio->hdl, 1);
 v4l2_ctrl_new_std(&radio->hdl, &usb_amradio_ctrl_ops,
     V4L2_CID_AUDIO_MUTE, 0, 1, 1, 1);
 if (radio->hdl.error) {
  retval = radio->hdl.error;
  dev_err(&intf->dev, "couldn't register control\n");
  goto err_ctrl;
 }
 mutex_init(&radio->lock);

 radio->v4l2_dev.ctrl_handler = &radio->hdl;
 radio->v4l2_dev.release = usb_amradio_release;
 strscpy(radio->vdev.name, radio->v4l2_dev.name,
  sizeof(radio->vdev.name));
 radio->vdev.v4l2_dev = &radio->v4l2_dev;
 radio->vdev.fops = &usb_amradio_fops;
 radio->vdev.ioctl_ops = &usb_amradio_ioctl_ops;
 radio->vdev.release = video_device_release_empty;
 radio->vdev.lock = &radio->lock;
 radio->vdev.device_caps = V4L2_CAP_RADIO | V4L2_CAP_TUNER |
      V4L2_CAP_HW_FREQ_SEEK;

 radio->usbdev = interface_to_usbdev(intf);
 radio->intf = intf;
 usb_set_intfdata(intf, &radio->v4l2_dev);
 radio->curfreq = 95.16 * FREQ_MUL;

 video_set_drvdata(&radio->vdev, radio);
 retval = usb_amradio_init(radio);
 if (retval)
  goto err_vdev;

 retval = video_register_device(&radio->vdev, VFL_TYPE_RADIO,
     radio_nr);
 if (retval < 0) {
  dev_err(&intf->dev, "could not register video device\n");
  goto err_vdev;
 }

 return 0;

err_vdev:
 v4l2_ctrl_handler_free(&radio->hdl);
err_ctrl:
 v4l2_device_unregister(&radio->v4l2_dev);
err_v4l2:
 kfree(radio->buffer);
err_nobuf:
 kfree(radio);
err:
 return retval;
}
