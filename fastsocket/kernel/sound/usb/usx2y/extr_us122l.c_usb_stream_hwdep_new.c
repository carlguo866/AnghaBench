
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_device {int devnum; TYPE_2__* bus; } ;
struct TYPE_4__ {int poll; int mmap; void* ioctl_compat; void* ioctl; int release; int open; } ;
struct snd_hwdep {int name; TYPE_1__ ops; TYPE_3__* private_data; int iface; } ;
struct snd_card {int dummy; } ;
struct TYPE_6__ {struct usb_device* dev; } ;
struct TYPE_5__ {int busnum; } ;


 int SNDRV_HWDEP_IFACE_USB_STREAM ;
 int SND_USB_STREAM_ID ;
 TYPE_3__* US122L (struct snd_card*) ;
 int snd_hwdep_new (struct snd_card*,int ,int ,struct snd_hwdep**) ;
 int sprintf (int ,char*,int,int) ;
 void* usb_stream_hwdep_ioctl ;
 int usb_stream_hwdep_mmap ;
 int usb_stream_hwdep_open ;
 int usb_stream_hwdep_poll ;
 int usb_stream_hwdep_release ;

__attribute__((used)) static int usb_stream_hwdep_new(struct snd_card *card)
{
 int err;
 struct snd_hwdep *hw;
 struct usb_device *dev = US122L(card)->dev;

 err = snd_hwdep_new(card, SND_USB_STREAM_ID, 0, &hw);
 if (err < 0)
  return err;

 hw->iface = SNDRV_HWDEP_IFACE_USB_STREAM;
 hw->private_data = US122L(card);
 hw->ops.open = usb_stream_hwdep_open;
 hw->ops.release = usb_stream_hwdep_release;
 hw->ops.ioctl = usb_stream_hwdep_ioctl;
 hw->ops.ioctl_compat = usb_stream_hwdep_ioctl;
 hw->ops.mmap = usb_stream_hwdep_mmap;
 hw->ops.poll = usb_stream_hwdep_poll;

 sprintf(hw->name, "/proc/bus/usb/%03d/%03d/hwdeppcm",
  dev->bus->busnum, dev->devnum);
 return 0;
}
