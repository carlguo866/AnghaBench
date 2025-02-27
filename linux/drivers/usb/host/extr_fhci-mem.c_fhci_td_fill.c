
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct urb_priv {struct td** tds; } ;
struct urb {int dummy; } ;
struct td {int type; int toggle; size_t iso_index; size_t interval; size_t start_frame; int ioc; int status; int len; int * data; struct ed* ed; struct urb* urb; } ;
struct fhci_hcd {int dummy; } ;
struct ed {int dummy; } ;
typedef enum fhci_ta_type { ____Placeholder_fhci_ta_type } fhci_ta_type ;


 int USB_TD_OK ;
 struct td* get_empty_td (struct fhci_hcd*) ;

struct td *fhci_td_fill(struct fhci_hcd *fhci, struct urb *urb,
   struct urb_priv *urb_priv, struct ed *ed, u16 index,
   enum fhci_ta_type type, int toggle, u8 *data, u32 len,
   u16 interval, u16 start_frame, bool ioc)
{
 struct td *td = get_empty_td(fhci);

 if (!td)
  return ((void*)0);

 td->urb = urb;
 td->ed = ed;
 td->type = type;
 td->toggle = toggle;
 td->data = data;
 td->len = len;
 td->iso_index = index;
 td->interval = interval;
 td->start_frame = start_frame;
 td->ioc = ioc;
 td->status = USB_TD_OK;

 urb_priv->tds[index] = td;

 return td;
}
