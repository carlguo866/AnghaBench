
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {scalar_t__ num_active_eps; scalar_t__ limit_active_eps; } ;


 int ENOMEM ;
 int trace_xhci_dbg_quirks ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*,scalar_t__,...) ;

__attribute__((used)) static int xhci_reserve_host_control_ep_resources(struct xhci_hcd *xhci)
{
 if (xhci->num_active_eps + 1 > xhci->limit_active_eps) {
  xhci_dbg_trace(xhci, trace_xhci_dbg_quirks,
    "Not enough ep ctxs: "
    "%u active, need to add 1, limit is %u.",
    xhci->num_active_eps, xhci->limit_active_eps);
  return -ENOMEM;
 }
 xhci->num_active_eps += 1;
 xhci_dbg_trace(xhci, trace_xhci_dbg_quirks,
   "Adding 1 ep ctx, %u now active.",
   xhci->num_active_eps);
 return 0;
}
