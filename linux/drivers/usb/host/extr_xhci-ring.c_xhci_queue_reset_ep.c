
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_hcd {int dummy; } ;
struct xhci_command {int dummy; } ;
typedef enum xhci_ep_reset_type { ____Placeholder_xhci_ep_reset_type } xhci_ep_reset_type ;


 int EP_ID_FOR_TRB (unsigned int) ;
 int EP_SOFT_RESET ;
 int SLOT_ID_FOR_TRB (int) ;
 int TRB_RESET_EP ;
 int TRB_TSP ;
 int TRB_TYPE (int ) ;
 int queue_command (struct xhci_hcd*,struct xhci_command*,int ,int ,int ,int,int) ;

int xhci_queue_reset_ep(struct xhci_hcd *xhci, struct xhci_command *cmd,
   int slot_id, unsigned int ep_index,
   enum xhci_ep_reset_type reset_type)
{
 u32 trb_slot_id = SLOT_ID_FOR_TRB(slot_id);
 u32 trb_ep_index = EP_ID_FOR_TRB(ep_index);
 u32 type = TRB_TYPE(TRB_RESET_EP);

 if (reset_type == EP_SOFT_RESET)
  type |= TRB_TSP;

 return queue_command(xhci, cmd, 0, 0, 0,
   trb_slot_id | trb_ep_index | type, 0);
}
