
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct sk_buff {int data; } ;
struct hif_device_usb {int reg_in_submitted; int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_REG_IN_BUF_SIZE ;
 int MAX_REG_IN_URB_NUM ;
 int USB_REG_IN_PIPE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int ath9k_hif_usb_dealloc_reg_in_urbs (struct hif_device_usb*) ;
 int ath9k_hif_usb_reg_in_cb ;
 int init_usb_anchor (int *) ;
 int kfree_skb (struct sk_buff*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_int_urb (struct urb*,int ,int ,int ,int ,int ,struct sk_buff*,int) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int ath9k_hif_usb_alloc_reg_in_urbs(struct hif_device_usb *hif_dev)
{
 struct urb *urb = ((void*)0);
 struct sk_buff *skb = ((void*)0);
 int i, ret;

 init_usb_anchor(&hif_dev->reg_in_submitted);

 for (i = 0; i < MAX_REG_IN_URB_NUM; i++) {


  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (urb == ((void*)0)) {
   ret = -ENOMEM;
   goto err_urb;
  }


  skb = alloc_skb(MAX_REG_IN_BUF_SIZE, GFP_KERNEL);
  if (!skb) {
   ret = -ENOMEM;
   goto err_skb;
  }

  usb_fill_int_urb(urb, hif_dev->udev,
      usb_rcvintpipe(hif_dev->udev,
        USB_REG_IN_PIPE),
      skb->data, MAX_REG_IN_BUF_SIZE,
      ath9k_hif_usb_reg_in_cb, skb, 1);


  usb_anchor_urb(urb, &hif_dev->reg_in_submitted);


  ret = usb_submit_urb(urb, GFP_KERNEL);
  if (ret) {
   usb_unanchor_urb(urb);
   goto err_submit;
  }





  usb_free_urb(urb);
 }

 return 0;

err_submit:
 kfree_skb(skb);
err_skb:
 usb_free_urb(urb);
err_urb:
 ath9k_hif_usb_dealloc_reg_in_urbs(hif_dev);
 return ret;
}
