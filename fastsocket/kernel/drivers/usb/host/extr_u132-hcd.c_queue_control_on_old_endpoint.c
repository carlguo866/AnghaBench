
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct usb_device {size_t devnum; } ;
struct urb {struct u132* hcpriv; scalar_t__ setup_packet; int pipe; } ;
struct u132_urbq {struct urb* urb; int urb_more; } ;
struct u132_udev {int enumeration; int udev_number; size_t usb_addr; struct usb_device* usb_device; int * endp_number_out; int * endp_number_in; } ;
struct u132_endp {int udev_number; int urb_more; scalar_t__ queue_size; int queue_last; struct urb** urb_list; int endp_number; } ;
struct u132_addr {int address; } ;
struct u132 {struct u132_udev* udev; struct u132_addr* addr; TYPE_1__* platform_dev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 size_t ENDP_QUEUE_MASK ;
 scalar_t__ ENDP_QUEUE_SIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int MAX_U132_UDEVS ;
 int dev_err (int *,char*) ;
 struct u132_urbq* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int u132_udev_get_kref (struct u132*,struct u132_udev*) ;
 int u132_udev_init_kref (struct u132*,struct u132_udev*) ;
 scalar_t__ usb_pipein (int ) ;

__attribute__((used)) static int queue_control_on_old_endpoint(struct u132 *u132,
 struct urb *urb,
 struct usb_device *usb_dev, struct u132_endp *endp, u8 usb_addr,
 u8 usb_endp)
{
 if (usb_addr == 0) {
  if (usb_pipein(urb->pipe)) {
   urb->hcpriv = u132;
   if (endp->queue_size++ < ENDP_QUEUE_SIZE) {
    endp->urb_list[ENDP_QUEUE_MASK &
     endp->queue_last++] = urb;
   } else {
    struct u132_urbq *urbq =
     kmalloc(sizeof(struct u132_urbq),
     GFP_ATOMIC);
    if (urbq == ((void*)0)) {
     endp->queue_size -= 1;
     return -ENOMEM;
    } else {
     list_add_tail(&urbq->urb_more,
      &endp->urb_more);
     urbq->urb = urb;
    }
   }
   return 0;
  } else {
   struct u132_addr *addr = &u132->addr[usb_dev->devnum];
   int I = MAX_U132_UDEVS;
   int i = 0;
   while (--I > 0) {
    struct u132_udev *udev = &u132->udev[++i];
    if (udev->usb_device) {
     continue;
    } else {
     udev->enumeration = 1;
     u132->addr[0].address = i;
     endp->udev_number = i;
     udev->udev_number = i;
     udev->usb_addr = usb_dev->devnum;
     u132_udev_init_kref(u132, udev);
     udev->endp_number_in[usb_endp] =
      endp->endp_number;
     u132_udev_get_kref(u132, udev);
     udev->endp_number_out[usb_endp] =
      endp->endp_number;
     udev->usb_device = usb_dev;
     ((u8 *) (urb->setup_packet))[2] =
      addr->address = i;
     u132_udev_get_kref(u132, udev);
     break;
    }
   }
   if (I == 0) {
    dev_err(&u132->platform_dev->dev, "run out of d"
     "evice space\n");
    return -EINVAL;
   }
   urb->hcpriv = u132;
   if (endp->queue_size++ < ENDP_QUEUE_SIZE) {
    endp->urb_list[ENDP_QUEUE_MASK &
     endp->queue_last++] = urb;
   } else {
    struct u132_urbq *urbq =
     kmalloc(sizeof(struct u132_urbq),
     GFP_ATOMIC);
    if (urbq == ((void*)0)) {
     endp->queue_size -= 1;
     return -ENOMEM;
    } else {
     list_add_tail(&urbq->urb_more,
      &endp->urb_more);
     urbq->urb = urb;
    }
   }
   return 0;
  }
 } else {
  u8 address = u132->addr[usb_addr].address;
  struct u132_udev *udev = &u132->udev[address];
  urb->hcpriv = u132;
  if (udev->enumeration != 2)
   udev->enumeration = 2;
  if (endp->queue_size++ < ENDP_QUEUE_SIZE) {
   endp->urb_list[ENDP_QUEUE_MASK & endp->queue_last++] =
    urb;
  } else {
   struct u132_urbq *urbq =
    kmalloc(sizeof(struct u132_urbq), GFP_ATOMIC);
   if (urbq == ((void*)0)) {
    endp->queue_size -= 1;
    return -ENOMEM;
   } else {
    list_add_tail(&urbq->urb_more, &endp->urb_more);
    urbq->urb = urb;
   }
  }
  return 0;
 }
}
