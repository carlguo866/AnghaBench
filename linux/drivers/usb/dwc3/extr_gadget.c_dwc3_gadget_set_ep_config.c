
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct usb_ss_ep_comp_descriptor {int dummy; } ;
struct usb_endpoint_descriptor {int bInterval; } ;
struct dwc3_gadget_ep_cmd_params {int param0; int param1; int param2; } ;
struct TYPE_4__ {scalar_t__ maxburst; struct usb_endpoint_descriptor* desc; struct usb_ss_ep_comp_descriptor* comp_desc; } ;
struct dwc3_ep {int number; int stream_capable; int interval; scalar_t__ direction; int saved_state; TYPE_2__ endpoint; struct dwc3* dwc; } ;
struct TYPE_3__ {scalar_t__ speed; } ;
struct dwc3 {TYPE_1__ gadget; } ;
typedef int params ;


 unsigned int DWC3_DEPCFG_ACTION_RESTORE ;
 int DWC3_DEPCFG_BINTERVAL_M1 (int) ;
 int DWC3_DEPCFG_BURST_SIZE (scalar_t__) ;
 int DWC3_DEPCFG_EP_NUMBER (int) ;
 int DWC3_DEPCFG_EP_TYPE (int ) ;
 unsigned int DWC3_DEPCFG_FIFO_NUMBER (int) ;
 int DWC3_DEPCFG_MAX_PACKET_SIZE (int ) ;
 int DWC3_DEPCFG_STREAM_CAPABLE ;
 int DWC3_DEPCFG_STREAM_EVENT_EN ;
 int DWC3_DEPCFG_XFER_COMPLETE_EN ;
 int DWC3_DEPCFG_XFER_IN_PROGRESS_EN ;
 int DWC3_DEPCFG_XFER_NOT_READY_EN ;
 int DWC3_DEPCMD_SETEPCONFIG ;
 scalar_t__ USB_SPEED_SUPER ;
 int dwc3_send_gadget_ep_cmd (struct dwc3_ep*,int ,struct dwc3_gadget_ep_cmd_params*) ;
 int memset (struct dwc3_gadget_ep_cmd_params*,int,int) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_type (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_endpoint_xfer_bulk (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_endpoint_xfer_control (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_endpoint_xfer_isoc (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_ss_max_streams (struct usb_ss_ep_comp_descriptor const*) ;

__attribute__((used)) static int dwc3_gadget_set_ep_config(struct dwc3_ep *dep, unsigned int action)
{
 const struct usb_ss_ep_comp_descriptor *comp_desc;
 const struct usb_endpoint_descriptor *desc;
 struct dwc3_gadget_ep_cmd_params params;
 struct dwc3 *dwc = dep->dwc;

 comp_desc = dep->endpoint.comp_desc;
 desc = dep->endpoint.desc;

 memset(&params, 0x00, sizeof(params));

 params.param0 = DWC3_DEPCFG_EP_TYPE(usb_endpoint_type(desc))
  | DWC3_DEPCFG_MAX_PACKET_SIZE(usb_endpoint_maxp(desc));


 if (dwc->gadget.speed >= USB_SPEED_SUPER) {
  u32 burst = dep->endpoint.maxburst;
  params.param0 |= DWC3_DEPCFG_BURST_SIZE(burst - 1);
 }

 params.param0 |= action;
 if (action == DWC3_DEPCFG_ACTION_RESTORE)
  params.param2 |= dep->saved_state;

 if (usb_endpoint_xfer_control(desc))
  params.param1 = DWC3_DEPCFG_XFER_COMPLETE_EN;

 if (dep->number <= 1 || usb_endpoint_xfer_isoc(desc))
  params.param1 |= DWC3_DEPCFG_XFER_NOT_READY_EN;

 if (usb_ss_max_streams(comp_desc) && usb_endpoint_xfer_bulk(desc)) {
  params.param1 |= DWC3_DEPCFG_STREAM_CAPABLE
   | DWC3_DEPCFG_STREAM_EVENT_EN;
  dep->stream_capable = 1;
 }

 if (!usb_endpoint_xfer_control(desc))
  params.param1 |= DWC3_DEPCFG_XFER_IN_PROGRESS_EN;







 params.param1 |= DWC3_DEPCFG_EP_NUMBER(dep->number);





 if (dep->direction)
  params.param0 |= DWC3_DEPCFG_FIFO_NUMBER(dep->number >> 1);

 if (desc->bInterval) {
  params.param1 |= DWC3_DEPCFG_BINTERVAL_M1(desc->bInterval - 1);
  dep->interval = 1 << (desc->bInterval - 1);
 }

 return dwc3_send_gadget_ep_cmd(dep, DWC3_DEPCMD_SETEPCONFIG, &params);
}
