
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_12__ {scalar_t__ w; } ;
struct TYPE_11__ {scalar_t__ w; } ;
struct TYPE_10__ {int w; } ;
struct TYPE_13__ {int bmRequestType; TYPE_3__ wLength; TYPE_2__ wIndex; TYPE_1__ wValue; int bRequest; } ;
struct TYPE_15__ {TYPE_4__ b; } ;
struct TYPE_14__ {TYPE_6__ setup; } ;
struct TYPE_16__ {TYPE_5__ Control; } ;
typedef TYPE_7__ USBH_HandleTypeDef ;


 int USBH_CtlReq (TYPE_7__*,int ,int ) ;
 int USB_H2D ;
 int USB_HID_SET_IDLE ;
 int USB_REQ_RECIPIENT_INTERFACE ;
 int USB_REQ_TYPE_CLASS ;

USBH_StatusTypeDef USBH_HID_SetIdle (USBH_HandleTypeDef *phost,
                                         uint8_t duration,
                                         uint8_t reportId)
{

  phost->Control.setup.b.bmRequestType = USB_H2D | USB_REQ_RECIPIENT_INTERFACE | USB_REQ_TYPE_CLASS;



  phost->Control.setup.b.bRequest = USB_HID_SET_IDLE;
  phost->Control.setup.b.wValue.w = (duration << 8 ) | reportId;

  phost->Control.setup.b.wIndex.w = 0;
  phost->Control.setup.b.wLength.w = 0;

  return USBH_CtlReq(phost, 0 , 0 );
}
