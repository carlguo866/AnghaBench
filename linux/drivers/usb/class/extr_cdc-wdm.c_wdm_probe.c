
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usb_interface {struct usb_host_interface* cur_altsetting; TYPE_1__* altsetting; } ;
struct TYPE_7__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_4__* endpoint; TYPE_3__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_cdc_parsed_header {TYPE_2__* usb_cdc_dmm_desc; } ;
struct TYPE_8__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_6__ {int wMaxCommand; } ;
struct TYPE_5__ {int extralen; int * extra; } ;


 int EINVAL ;
 int WDM_DEFAULT_BUFSIZE ;
 int cdc_parse_cdc_header (struct usb_cdc_parsed_header*,struct usb_interface*,int *,int) ;
 int le16_to_cpu (int ) ;
 int wdm_create (struct usb_interface*,struct usb_endpoint_descriptor*,int ,int *) ;
 int wdm_manage_power ;

__attribute__((used)) static int wdm_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 int rv = -EINVAL;
 struct usb_host_interface *iface;
 struct usb_endpoint_descriptor *ep;
 struct usb_cdc_parsed_header hdr;
 u8 *buffer = intf->altsetting->extra;
 int buflen = intf->altsetting->extralen;
 u16 maxcom = WDM_DEFAULT_BUFSIZE;

 if (!buffer)
  goto err;

 cdc_parse_cdc_header(&hdr, intf, buffer, buflen);

 if (hdr.usb_cdc_dmm_desc)
  maxcom = le16_to_cpu(hdr.usb_cdc_dmm_desc->wMaxCommand);

 iface = intf->cur_altsetting;
 if (iface->desc.bNumEndpoints != 1)
  goto err;
 ep = &iface->endpoint[0].desc;

 rv = wdm_create(intf, ep, maxcom, &wdm_manage_power);

err:
 return rv;
}
