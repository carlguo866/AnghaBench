
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbhid_device {size_t ctrltail; int bufsize; int ifnum; int last_ctrl; TYPE_3__* urbctrl; TYPE_2__* cr; TYPE_1__* ctrl; int ctrlbuf; } ;
struct hid_report {int size; int id; int type; } ;
struct hid_device {struct usbhid_device* driver_data; } ;
struct TYPE_6__ {int transfer_buffer_length; int dev; int pipe; } ;
struct TYPE_5__ {unsigned char bRequestType; scalar_t__ bRequest; void* wLength; void* wIndex; void* wValue; } ;
struct TYPE_4__ {char* raw_report; unsigned char dir; struct hid_report* report; } ;


 int DIV_ROUND_UP (int,int) ;
 int GFP_ATOMIC ;
 scalar_t__ HID_REQ_GET_REPORT ;
 scalar_t__ HID_REQ_SET_REPORT ;
 unsigned char USB_DIR_OUT ;
 unsigned char USB_RECIP_INTERFACE ;
 unsigned char USB_TYPE_CLASS ;
 void* cpu_to_le16 (int) ;
 int dbg_hid (char*,char*,void*,void*,void*) ;
 int hid_err (struct hid_device*,char*,int) ;
 int hid_to_usb_dev (struct hid_device*) ;
 int jiffies ;
 int kfree (char*) ;
 int memcpy (int ,char*,int) ;
 int usb_maxpacket (int ,int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_submit_urb (TYPE_3__*,int ) ;

__attribute__((used)) static int hid_submit_ctrl(struct hid_device *hid)
{
 struct hid_report *report;
 unsigned char dir;
 char *raw_report;
 int len, r;
 struct usbhid_device *usbhid = hid->driver_data;

 report = usbhid->ctrl[usbhid->ctrltail].report;
 raw_report = usbhid->ctrl[usbhid->ctrltail].raw_report;
 dir = usbhid->ctrl[usbhid->ctrltail].dir;

 len = ((report->size - 1) >> 3) + 1 + (report->id > 0);
 if (dir == USB_DIR_OUT) {
  usbhid->urbctrl->pipe = usb_sndctrlpipe(hid_to_usb_dev(hid), 0);
  usbhid->urbctrl->transfer_buffer_length = len;
  if (raw_report) {
   memcpy(usbhid->ctrlbuf, raw_report, len);
   kfree(raw_report);
   usbhid->ctrl[usbhid->ctrltail].raw_report = ((void*)0);
  }
 } else {
  int maxpacket, padlen;

  usbhid->urbctrl->pipe = usb_rcvctrlpipe(hid_to_usb_dev(hid), 0);
  maxpacket = usb_maxpacket(hid_to_usb_dev(hid),
       usbhid->urbctrl->pipe, 0);
  if (maxpacket > 0) {
   padlen = DIV_ROUND_UP(len, maxpacket);
   padlen *= maxpacket;
   if (padlen > usbhid->bufsize)
    padlen = usbhid->bufsize;
  } else
   padlen = 0;
  usbhid->urbctrl->transfer_buffer_length = padlen;
 }
 usbhid->urbctrl->dev = hid_to_usb_dev(hid);

 usbhid->cr->bRequestType = USB_TYPE_CLASS | USB_RECIP_INTERFACE | dir;
 usbhid->cr->bRequest = (dir == USB_DIR_OUT) ? HID_REQ_SET_REPORT :
            HID_REQ_GET_REPORT;
 usbhid->cr->wValue = cpu_to_le16(((report->type + 1) << 8) |
      report->id);
 usbhid->cr->wIndex = cpu_to_le16(usbhid->ifnum);
 usbhid->cr->wLength = cpu_to_le16(len);

 dbg_hid("submitting ctrl urb: %s wValue=0x%04x wIndex=0x%04x wLength=%u\n",
  usbhid->cr->bRequest == HID_REQ_SET_REPORT ? "Set_Report" :
            "Get_Report",
  usbhid->cr->wValue, usbhid->cr->wIndex, usbhid->cr->wLength);

 r = usb_submit_urb(usbhid->urbctrl, GFP_ATOMIC);
 if (r < 0) {
  hid_err(hid, "usb_submit_urb(ctrl) failed: %d\n", r);
  return r;
 }
 usbhid->last_ctrl = jiffies;
 return 0;
}
