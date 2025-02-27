
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_14__ {int w; } ;
struct TYPE_13__ {scalar_t__ w; } ;
struct TYPE_12__ {scalar_t__ w; } ;
struct TYPE_15__ {int bmRequestType; TYPE_3__ wLength; TYPE_2__ wIndex; TYPE_1__ wValue; int bRequest; } ;
struct TYPE_16__ {TYPE_4__ b; } ;
struct TYPE_17__ {TYPE_5__ setup; } ;
struct TYPE_18__ {TYPE_6__ Control; } ;
typedef TYPE_7__ USBH_HandleTypeDef ;
struct TYPE_19__ {int Array; } ;
typedef TYPE_8__ CDC_LineCodingTypeDef ;


 int CDC_GET_LINE_CODING ;
 int LINE_CODING_STRUCTURE_SIZE ;
 int USBH_CtlReq (TYPE_7__*,int ,int ) ;
 int USB_D2H ;
 int USB_REQ_RECIPIENT_INTERFACE ;
 int USB_REQ_TYPE_CLASS ;

__attribute__((used)) static USBH_StatusTypeDef GetLineCoding(USBH_HandleTypeDef *phost, CDC_LineCodingTypeDef *linecoding)
{

  phost->Control.setup.b.bmRequestType = USB_D2H | USB_REQ_TYPE_CLASS | USB_REQ_RECIPIENT_INTERFACE;


  phost->Control.setup.b.bRequest = CDC_GET_LINE_CODING;
  phost->Control.setup.b.wValue.w = 0;
  phost->Control.setup.b.wIndex.w = 0;
  phost->Control.setup.b.wLength.w = LINE_CODING_STRUCTURE_SIZE;

  return USBH_CtlReq(phost, linecoding->Array, LINE_CODING_STRUCTURE_SIZE);
}
