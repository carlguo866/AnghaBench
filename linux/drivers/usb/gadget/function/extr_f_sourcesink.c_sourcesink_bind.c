
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_9__ ;
typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_18__ ;
typedef struct TYPE_32__ TYPE_17__ ;
typedef struct TYPE_31__ TYPE_16__ ;
typedef struct TYPE_30__ TYPE_15__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct usb_function {int name; } ;
struct usb_configuration {struct usb_composite_dev* cdev; } ;
struct usb_composite_dev {TYPE_5__* gadget; } ;
struct f_sourcesink {int isoc_interval; int isoc_mult; int isoc_maxburst; int isoc_maxpacket; TYPE_3__* iso_out_ep; TYPE_4__* iso_in_ep; TYPE_2__* out_ep; TYPE_1__* in_ep; } ;
struct TYPE_42__ {int wMaxPacketSize; int bInterval; int bEndpointAddress; } ;
struct TYPE_41__ {int bEndpointAddress; } ;
struct TYPE_40__ {int bEndpointAddress; } ;
struct TYPE_39__ {int wMaxPacketSize; int bInterval; int bEndpointAddress; } ;
struct TYPE_38__ {int name; } ;
struct TYPE_37__ {char* name; } ;
struct TYPE_36__ {char* name; } ;
struct TYPE_35__ {int name; } ;
struct TYPE_34__ {int name; } ;
struct TYPE_33__ {int wMaxPacketSize; int bInterval; int bEndpointAddress; } ;
struct TYPE_32__ {int wMaxPacketSize; int bInterval; int bEndpointAddress; } ;
struct TYPE_31__ {int bEndpointAddress; } ;
struct TYPE_30__ {int bEndpointAddress; } ;
struct TYPE_29__ {int bInterfaceNumber; } ;
struct TYPE_28__ {int bInterfaceNumber; } ;
struct TYPE_27__ {int bmAttributes; int bMaxBurst; int wBytesPerInterval; } ;
struct TYPE_26__ {int wMaxPacketSize; int bInterval; int bEndpointAddress; } ;
struct TYPE_25__ {int bmAttributes; int bMaxBurst; int wBytesPerInterval; } ;


 int DBG (struct usb_composite_dev*,char*,char*,int ,int ,int ,char*,char*) ;
 int ENODEV ;
 int ERROR (struct usb_composite_dev*,char*,int ,int ) ;
 size_t FS_ALT_IFC_1_OFFSET ;
 size_t HS_ALT_IFC_1_OFFSET ;
 size_t SS_ALT_IFC_1_OFFSET ;
 TYPE_6__ fs_iso_sink_desc ;
 TYPE_6__ fs_iso_source_desc ;
 TYPE_6__ fs_sink_desc ;
 TYPE_6__ fs_source_desc ;
 int ** fs_source_sink_descs ;
 struct f_sourcesink* func_to_ss (struct usb_function*) ;
 scalar_t__ gadget_is_dualspeed (TYPE_5__*) ;
 scalar_t__ gadget_is_superspeed (TYPE_5__*) ;
 TYPE_18__ hs_iso_sink_desc ;
 TYPE_17__ hs_iso_source_desc ;
 TYPE_16__ hs_sink_desc ;
 TYPE_15__ hs_source_desc ;
 int ** hs_source_sink_descs ;
 TYPE_14__ source_sink_intf_alt0 ;
 TYPE_13__ source_sink_intf_alt1 ;
 TYPE_12__ ss_iso_sink_comp_desc ;
 TYPE_11__ ss_iso_sink_desc ;
 TYPE_10__ ss_iso_source_comp_desc ;
 TYPE_9__ ss_iso_source_desc ;
 TYPE_8__ ss_sink_desc ;
 TYPE_7__ ss_source_desc ;
 int ** ss_source_sink_descs ;
 int usb_assign_descriptors (struct usb_function*,int **,int **,int **,int *) ;
 void* usb_ep_autoconfig (TYPE_5__*,TYPE_6__*) ;
 int usb_ep_autoconfig_release (TYPE_4__*) ;
 int usb_interface_id (struct usb_configuration*,struct usb_function*) ;

__attribute__((used)) static int
sourcesink_bind(struct usb_configuration *c, struct usb_function *f)
{
 struct usb_composite_dev *cdev = c->cdev;
 struct f_sourcesink *ss = func_to_ss(f);
 int id;
 int ret;


 id = usb_interface_id(c, f);
 if (id < 0)
  return id;
 source_sink_intf_alt0.bInterfaceNumber = id;
 source_sink_intf_alt1.bInterfaceNumber = id;


 ss->in_ep = usb_ep_autoconfig(cdev->gadget, &fs_source_desc);
 if (!ss->in_ep) {
autoconf_fail:
  ERROR(cdev, "%s: can't autoconfigure on %s\n",
   f->name, cdev->gadget->name);
  return -ENODEV;
 }

 ss->out_ep = usb_ep_autoconfig(cdev->gadget, &fs_sink_desc);
 if (!ss->out_ep)
  goto autoconf_fail;


 if (ss->isoc_interval < 1)
  ss->isoc_interval = 1;
 if (ss->isoc_interval > 16)
  ss->isoc_interval = 16;
 if (ss->isoc_mult > 2)
  ss->isoc_mult = 2;
 if (ss->isoc_maxburst > 15)
  ss->isoc_maxburst = 15;


 fs_iso_source_desc.wMaxPacketSize = ss->isoc_maxpacket > 1023 ?
      1023 : ss->isoc_maxpacket;
 fs_iso_source_desc.bInterval = ss->isoc_interval;
 fs_iso_sink_desc.wMaxPacketSize = ss->isoc_maxpacket > 1023 ?
      1023 : ss->isoc_maxpacket;
 fs_iso_sink_desc.bInterval = ss->isoc_interval;


 ss->iso_in_ep = usb_ep_autoconfig(cdev->gadget, &fs_iso_source_desc);
 if (!ss->iso_in_ep)
  goto no_iso;

 ss->iso_out_ep = usb_ep_autoconfig(cdev->gadget, &fs_iso_sink_desc);
 if (!ss->iso_out_ep) {
  usb_ep_autoconfig_release(ss->iso_in_ep);
  ss->iso_in_ep = ((void*)0);
no_iso:





  fs_source_sink_descs[FS_ALT_IFC_1_OFFSET] = ((void*)0);
  hs_source_sink_descs[HS_ALT_IFC_1_OFFSET] = ((void*)0);
  ss_source_sink_descs[SS_ALT_IFC_1_OFFSET] = ((void*)0);
 }

 if (ss->isoc_maxpacket > 1024)
  ss->isoc_maxpacket = 1024;


 hs_source_desc.bEndpointAddress = fs_source_desc.bEndpointAddress;
 hs_sink_desc.bEndpointAddress = fs_sink_desc.bEndpointAddress;






 hs_iso_source_desc.wMaxPacketSize = ss->isoc_maxpacket;
 hs_iso_source_desc.wMaxPacketSize |= ss->isoc_mult << 11;
 hs_iso_source_desc.bInterval = ss->isoc_interval;
 hs_iso_source_desc.bEndpointAddress =
  fs_iso_source_desc.bEndpointAddress;

 hs_iso_sink_desc.wMaxPacketSize = ss->isoc_maxpacket;
 hs_iso_sink_desc.wMaxPacketSize |= ss->isoc_mult << 11;
 hs_iso_sink_desc.bInterval = ss->isoc_interval;
 hs_iso_sink_desc.bEndpointAddress = fs_iso_sink_desc.bEndpointAddress;


 ss_source_desc.bEndpointAddress =
  fs_source_desc.bEndpointAddress;
 ss_sink_desc.bEndpointAddress =
  fs_sink_desc.bEndpointAddress;






 ss_iso_source_desc.wMaxPacketSize = ss->isoc_maxpacket;
 ss_iso_source_desc.bInterval = ss->isoc_interval;
 ss_iso_source_comp_desc.bmAttributes = ss->isoc_mult;
 ss_iso_source_comp_desc.bMaxBurst = ss->isoc_maxburst;
 ss_iso_source_comp_desc.wBytesPerInterval = ss->isoc_maxpacket *
  (ss->isoc_mult + 1) * (ss->isoc_maxburst + 1);
 ss_iso_source_desc.bEndpointAddress =
  fs_iso_source_desc.bEndpointAddress;

 ss_iso_sink_desc.wMaxPacketSize = ss->isoc_maxpacket;
 ss_iso_sink_desc.bInterval = ss->isoc_interval;
 ss_iso_sink_comp_desc.bmAttributes = ss->isoc_mult;
 ss_iso_sink_comp_desc.bMaxBurst = ss->isoc_maxburst;
 ss_iso_sink_comp_desc.wBytesPerInterval = ss->isoc_maxpacket *
  (ss->isoc_mult + 1) * (ss->isoc_maxburst + 1);
 ss_iso_sink_desc.bEndpointAddress = fs_iso_sink_desc.bEndpointAddress;

 ret = usb_assign_descriptors(f, fs_source_sink_descs,
   hs_source_sink_descs, ss_source_sink_descs, ((void*)0));
 if (ret)
  return ret;

 DBG(cdev, "%s speed %s: IN/%s, OUT/%s, ISO-IN/%s, ISO-OUT/%s\n",
     (gadget_is_superspeed(c->cdev->gadget) ? "super" :
      (gadget_is_dualspeed(c->cdev->gadget) ? "dual" : "full")),
   f->name, ss->in_ep->name, ss->out_ep->name,
   ss->iso_in_ep ? ss->iso_in_ep->name : "<none>",
   ss->iso_out_ep ? ss->iso_out_ep->name : "<none>");
 return 0;
}
