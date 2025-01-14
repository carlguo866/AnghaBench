
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_ssp_cap_descriptor {int bLength; int bFunctionalitySupport; void* wTotalLength; void** bmSublinkSpeedAttr; void* wFunctionalitySupport; void* bmAttributes; scalar_t__ wReserved; scalar_t__ bReserved; int bDevCapabilityType; void* bDescriptorType; scalar_t__ bNumDeviceCaps; void* bU2DevExitLat; int bU1devExitLat; void* wSpeedSupported; } ;
struct usb_ss_cap_descriptor {int bLength; int bFunctionalitySupport; void* wTotalLength; void** bmSublinkSpeedAttr; void* wFunctionalitySupport; void* bmAttributes; scalar_t__ wReserved; scalar_t__ bReserved; int bDevCapabilityType; void* bDescriptorType; scalar_t__ bNumDeviceCaps; void* bU2DevExitLat; int bU1devExitLat; void* wSpeedSupported; } ;
struct usb_ext_cap_descriptor {int bLength; int bFunctionalitySupport; void* wTotalLength; void** bmSublinkSpeedAttr; void* wFunctionalitySupport; void* bmAttributes; scalar_t__ wReserved; scalar_t__ bReserved; int bDevCapabilityType; void* bDescriptorType; scalar_t__ bNumDeviceCaps; void* bU2DevExitLat; int bU1devExitLat; void* wSpeedSupported; } ;
struct usb_dcd_config_params {scalar_t__ besl_baseline; scalar_t__ besl_deep; void* bU2DevExitLat; int bU1devExitLat; } ;
struct usb_composite_dev {TYPE_2__* req; TYPE_3__* gadget; } ;
struct usb_bos_descriptor {int bLength; int bFunctionalitySupport; void* wTotalLength; void** bmSublinkSpeedAttr; void* wFunctionalitySupport; void* bmAttributes; scalar_t__ wReserved; scalar_t__ bReserved; int bDevCapabilityType; void* bDescriptorType; scalar_t__ bNumDeviceCaps; void* bU2DevExitLat; int bU1devExitLat; void* wSpeedSupported; } ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {struct usb_ssp_cap_descriptor* buf; } ;
struct TYPE_6__ {int (* get_config_params ) (TYPE_3__*,struct usb_dcd_config_params*) ;} ;


 int USB_5GBPS_OPERATION ;
 unsigned int USB_BESL_BASELINE_VALID ;
 unsigned int USB_BESL_DEEP_VALID ;
 unsigned int USB_BESL_SUPPORT ;
 int USB_CAP_TYPE_EXT ;
 scalar_t__ USB_DEFAULT_BESL_UNSPECIFIED ;
 int USB_DEFAULT_U1_DEV_EXIT_LAT ;
 int USB_DEFAULT_U2_DEV_EXIT_LAT ;
 void* USB_DT_BOS ;
 int USB_DT_BOS_SIZE ;
 void* USB_DT_DEVICE_CAPABILITY ;
 void* USB_DT_USB_EXT_CAP_SIZE ;
 void* USB_DT_USB_SSP_CAP_SIZE (int) ;
 void* USB_DT_USB_SS_CAP_SIZE ;
 int USB_FULL_SPEED_OPERATION ;
 int USB_HIGH_SPEED_OPERATION ;
 int USB_LOW_SPEED_OPERATION ;
 unsigned int USB_LPM_SUPPORT ;
 unsigned int USB_SET_BESL_BASELINE (scalar_t__) ;
 unsigned int USB_SET_BESL_DEEP (scalar_t__) ;
 int USB_SSP_CAP_TYPE ;
 int USB_SS_CAP_TYPE ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 scalar_t__ gadget_is_superspeed (TYPE_3__*) ;
 scalar_t__ gadget_is_superspeed_plus (TYPE_3__*) ;
 int le16_add_cpu (void**,void*) ;
 int le16_to_cpu (void*) ;
 int stub1 (TYPE_3__*,struct usb_dcd_config_params*) ;

__attribute__((used)) static int bos_desc(struct usb_composite_dev *cdev)
{
 struct usb_ext_cap_descriptor *usb_ext;
 struct usb_dcd_config_params dcd_config_params;
 struct usb_bos_descriptor *bos = cdev->req->buf;
 unsigned int besl = 0;

 bos->bLength = USB_DT_BOS_SIZE;
 bos->bDescriptorType = USB_DT_BOS;

 bos->wTotalLength = cpu_to_le16(USB_DT_BOS_SIZE);
 bos->bNumDeviceCaps = 0;


 if (cdev->gadget->ops->get_config_params) {
  cdev->gadget->ops->get_config_params(cdev->gadget,
           &dcd_config_params);
 } else {
  dcd_config_params.besl_baseline =
   USB_DEFAULT_BESL_UNSPECIFIED;
  dcd_config_params.besl_deep =
   USB_DEFAULT_BESL_UNSPECIFIED;
  dcd_config_params.bU1devExitLat =
   USB_DEFAULT_U1_DEV_EXIT_LAT;
  dcd_config_params.bU2DevExitLat =
   cpu_to_le16(USB_DEFAULT_U2_DEV_EXIT_LAT);
 }

 if (dcd_config_params.besl_baseline != USB_DEFAULT_BESL_UNSPECIFIED)
  besl = USB_BESL_BASELINE_VALID |
   USB_SET_BESL_BASELINE(dcd_config_params.besl_baseline);

 if (dcd_config_params.besl_deep != USB_DEFAULT_BESL_UNSPECIFIED)
  besl |= USB_BESL_DEEP_VALID |
   USB_SET_BESL_DEEP(dcd_config_params.besl_deep);





 usb_ext = cdev->req->buf + le16_to_cpu(bos->wTotalLength);
 bos->bNumDeviceCaps++;
 le16_add_cpu(&bos->wTotalLength, USB_DT_USB_EXT_CAP_SIZE);
 usb_ext->bLength = USB_DT_USB_EXT_CAP_SIZE;
 usb_ext->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
 usb_ext->bDevCapabilityType = USB_CAP_TYPE_EXT;
 usb_ext->bmAttributes = cpu_to_le32(USB_LPM_SUPPORT |
         USB_BESL_SUPPORT | besl);





 if (gadget_is_superspeed(cdev->gadget)) {
  struct usb_ss_cap_descriptor *ss_cap;

  ss_cap = cdev->req->buf + le16_to_cpu(bos->wTotalLength);
  bos->bNumDeviceCaps++;
  le16_add_cpu(&bos->wTotalLength, USB_DT_USB_SS_CAP_SIZE);
  ss_cap->bLength = USB_DT_USB_SS_CAP_SIZE;
  ss_cap->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
  ss_cap->bDevCapabilityType = USB_SS_CAP_TYPE;
  ss_cap->bmAttributes = 0;
  ss_cap->wSpeedSupported = cpu_to_le16(USB_LOW_SPEED_OPERATION |
            USB_FULL_SPEED_OPERATION |
            USB_HIGH_SPEED_OPERATION |
            USB_5GBPS_OPERATION);
  ss_cap->bFunctionalitySupport = USB_LOW_SPEED_OPERATION;
  ss_cap->bU1devExitLat = dcd_config_params.bU1devExitLat;
  ss_cap->bU2DevExitLat = dcd_config_params.bU2DevExitLat;
 }


 if (gadget_is_superspeed_plus(cdev->gadget)) {
  struct usb_ssp_cap_descriptor *ssp_cap;

  ssp_cap = cdev->req->buf + le16_to_cpu(bos->wTotalLength);
  bos->bNumDeviceCaps++;





  le16_add_cpu(&bos->wTotalLength, USB_DT_USB_SSP_CAP_SIZE(1));
  ssp_cap->bLength = USB_DT_USB_SSP_CAP_SIZE(1);
  ssp_cap->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
  ssp_cap->bDevCapabilityType = USB_SSP_CAP_TYPE;
  ssp_cap->bReserved = 0;
  ssp_cap->wReserved = 0;


  ssp_cap->bmAttributes = cpu_to_le32(1);


  ssp_cap->wFunctionalitySupport =
   cpu_to_le16((1 << 8) | (1 << 12));
  ssp_cap->bmSublinkSpeedAttr[0] =
   cpu_to_le32((3 << 4) | (1 << 14) | (0xa << 16));







  ssp_cap->bmSublinkSpeedAttr[1] =
   cpu_to_le32((3 << 4) | (1 << 14) |
        (0xa << 16) | (1 << 7));
 }

 return le16_to_cpu(bos->wTotalLength);
}
