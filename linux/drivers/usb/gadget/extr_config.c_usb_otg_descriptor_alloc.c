
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_otg_descriptor {int dummy; } ;
struct usb_otg20_descriptor {int dummy; } ;
struct usb_gadget {TYPE_1__* otg_caps; } ;
struct usb_descriptor_header {int dummy; } ;
struct TYPE_2__ {int otg_rev; } ;


 int GFP_KERNEL ;
 struct usb_descriptor_header* kzalloc (unsigned int,int ) ;

struct usb_descriptor_header *usb_otg_descriptor_alloc(
    struct usb_gadget *gadget)
{
 struct usb_descriptor_header *otg_desc;
 unsigned length = 0;

 if (gadget->otg_caps && (gadget->otg_caps->otg_rev >= 0x0200))
  length = sizeof(struct usb_otg20_descriptor);
 else
  length = sizeof(struct usb_otg_descriptor);

 otg_desc = kzalloc(length, GFP_KERNEL);
 return otg_desc;
}
