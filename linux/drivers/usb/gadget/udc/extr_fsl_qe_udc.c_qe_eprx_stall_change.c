
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct qe_udc {TYPE_1__* usb_regs; } ;
struct qe_ep {size_t epnum; scalar_t__ dir; struct qe_udc* udc; } ;
struct TYPE_2__ {int * usb_usep; } ;


 scalar_t__ USB_DIR_IN ;
 int USB_RHS_IGNORE_OUT ;
 int USB_RHS_MASK ;
 int USB_RHS_STALL ;
 int in_be16 (int *) ;
 int out_be16 (int *,int) ;

__attribute__((used)) static int qe_eprx_stall_change(struct qe_ep *ep, int value)
{
 u16 tem_usep;
 u8 epnum = ep->epnum;
 struct qe_udc *udc = ep->udc;

 tem_usep = in_be16(&udc->usb_regs->usb_usep[epnum]);
 tem_usep = tem_usep & ~USB_RHS_MASK;
 if (value == 1)
  tem_usep |= USB_RHS_STALL;
 else if (ep->dir == USB_DIR_IN)
  tem_usep |= USB_RHS_IGNORE_OUT;

 out_be16(&udc->usb_regs->usb_usep[epnum], tem_usep);
 return 0;
}
