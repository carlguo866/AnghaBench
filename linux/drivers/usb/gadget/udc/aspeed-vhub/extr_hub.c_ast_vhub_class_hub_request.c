
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_ctrlrequest {int bRequestType; int bRequest; int wLength; int wIndex; int wValue; } ;
struct ast_vhub_ep {int dummy; } ;
typedef enum std_req_rc { ____Placeholder_std_req_rc } std_req_rc ;


 int C_HUB_LOCAL_POWER ;
 int C_HUB_OVER_CURRENT ;



 int EPDBG (struct ast_vhub_ep*,char*,...) ;
 int USB_DT_HUB ;
 int ast_vhub_clr_port_feature (struct ast_vhub_ep*,int,int) ;
 int ast_vhub_get_port_stat (struct ast_vhub_ep*,int) ;
 int ast_vhub_rep_desc (struct ast_vhub_ep*,int,int) ;
 int ast_vhub_set_port_feature (struct ast_vhub_ep*,int,int) ;
 int ast_vhub_simple_reply (struct ast_vhub_ep*,int ,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int std_req_complete ;
 int std_req_stall ;

enum std_req_rc ast_vhub_class_hub_request(struct ast_vhub_ep *ep,
        struct usb_ctrlrequest *crq)
{
 u16 wValue, wIndex, wLength;

 wValue = le16_to_cpu(crq->wValue);
 wIndex = le16_to_cpu(crq->wIndex);
 wLength = le16_to_cpu(crq->wLength);

 switch ((crq->bRequestType << 8) | crq->bRequest) {
 case 134:
  EPDBG(ep, "GetHubStatus\n");
  return ast_vhub_simple_reply(ep, 0, 0, 0, 0);
 case 133:
  EPDBG(ep, "GetPortStatus(%d)\n", wIndex & 0xff);
  return ast_vhub_get_port_stat(ep, wIndex & 0xf);
 case 135:
  if (wValue != (USB_DT_HUB << 8))
   return std_req_stall;
  EPDBG(ep, "GetHubDescriptor(%d)\n", wIndex & 0xff);
  return ast_vhub_rep_desc(ep, USB_DT_HUB, wLength);
 case 130:
 case 138:
  EPDBG(ep, "Get/SetHubFeature(%d)\n", wValue);

  if (wValue == C_HUB_LOCAL_POWER ||
      wValue == C_HUB_OVER_CURRENT)
   return std_req_complete;
  return std_req_stall;
 case 129:
  EPDBG(ep, "SetPortFeature(%d,%d)\n", wIndex & 0xf, wValue);
  return ast_vhub_set_port_feature(ep, wIndex & 0xf, wValue);
 case 137:
  EPDBG(ep, "ClearPortFeature(%d,%d)\n", wIndex & 0xf, wValue);
  return ast_vhub_clr_port_feature(ep, wIndex & 0xf, wValue);
 case 136:
 case 131:
 case 128:
  return std_req_complete;
 case 132:
  return ast_vhub_simple_reply(ep, 0, 0, 0, 0);
 default:
  EPDBG(ep, "Unknown class request\n");
 }
 return std_req_stall;
}
