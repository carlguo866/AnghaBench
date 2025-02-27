
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_flags; } ;
struct TYPE_2__ {int len; } ;
struct carl9170_cmd {TYPE_1__ hdr; } ;
struct ar9170 {int tx_cmd; int udev; } ;


 int AR9170_USB_EP_CMD ;
 int CARL9170_MAX_CMD_LEN ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_ATOMIC ;
 int IS_INITIALIZED (struct ar9170*) ;
 int URB_FREE_BUFFER ;
 scalar_t__ WARN_ON (int) ;
 int carl9170_usb_cmd_complete ;
 int carl9170_usb_submit_cmd_urb (struct ar9170*) ;
 int kfree (struct carl9170_cmd*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_int_urb (struct urb*,int ,int ,struct carl9170_cmd*,int,int ,struct ar9170*,int) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndintpipe (int ,int ) ;

int __carl9170_exec_cmd(struct ar9170 *ar, struct carl9170_cmd *cmd,
   const bool free_buf)
{
 struct urb *urb;
 int err = 0;

 if (!IS_INITIALIZED(ar)) {
  err = -EPERM;
  goto err_free;
 }

 if (WARN_ON(cmd->hdr.len > CARL9170_MAX_CMD_LEN - 4)) {
  err = -EINVAL;
  goto err_free;
 }

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb) {
  err = -ENOMEM;
  goto err_free;
 }

 usb_fill_int_urb(urb, ar->udev, usb_sndintpipe(ar->udev,
  AR9170_USB_EP_CMD), cmd, cmd->hdr.len + 4,
  carl9170_usb_cmd_complete, ar, 1);

 if (free_buf)
  urb->transfer_flags |= URB_FREE_BUFFER;

 usb_anchor_urb(urb, &ar->tx_cmd);
 usb_free_urb(urb);

 return carl9170_usb_submit_cmd_urb(ar);

err_free:
 if (free_buf)
  kfree(cmd);

 return err;
}
