
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_virt_ep {int stop_cmds_pending; int stop_cmd_timer; int ep_state; } ;
struct xhci_hcd {int dummy; } ;


 int EP_HALT_PENDING ;
 scalar_t__ del_timer (int *) ;

__attribute__((used)) static void xhci_stop_watchdog_timer_in_irq(struct xhci_hcd *xhci,
  struct xhci_virt_ep *ep)
{
 ep->ep_state &= ~EP_HALT_PENDING;




 if (del_timer(&ep->stop_cmd_timer))
  ep->stop_cmds_pending--;
}
