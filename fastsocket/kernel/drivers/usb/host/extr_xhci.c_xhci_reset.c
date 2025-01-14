
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xhci_hcd {TYPE_2__* bus_state; TYPE_1__* op_regs; } ;
struct TYPE_4__ {scalar_t__ resuming_ports; scalar_t__ suspended_ports; scalar_t__ port_c_suspend; } ;
struct TYPE_3__ {int status; int command; } ;


 int CMD_RESET ;
 int STS_CNR ;
 int STS_HALT ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_handshake (struct xhci_hcd*,int *,int,int ,int) ;
 int xhci_readl (struct xhci_hcd*,int *) ;
 int xhci_warn (struct xhci_hcd*,char*) ;
 int xhci_writel (struct xhci_hcd*,int,int *) ;

int xhci_reset(struct xhci_hcd *xhci)
{
 u32 command;
 u32 state;
 int ret, i;

 state = xhci_readl(xhci, &xhci->op_regs->status);
 if ((state & STS_HALT) == 0) {
  xhci_warn(xhci, "Host controller not halted, aborting reset.\n");
  return 0;
 }

 xhci_dbg(xhci, "// Reset the HC\n");
 command = xhci_readl(xhci, &xhci->op_regs->command);
 command |= CMD_RESET;
 xhci_writel(xhci, command, &xhci->op_regs->command);

 ret = xhci_handshake(xhci, &xhci->op_regs->command,
   CMD_RESET, 0, 10 * 1000 * 1000);
 if (ret)
  return ret;

 xhci_dbg(xhci, "Wait for controller to be ready for doorbell rings\n");




 ret = xhci_handshake(xhci, &xhci->op_regs->status,
   STS_CNR, 0, 10 * 1000 * 1000);

 for (i = 0; i < 2; ++i) {
  xhci->bus_state[i].port_c_suspend = 0;
  xhci->bus_state[i].suspended_ports = 0;
  xhci->bus_state[i].resuming_ports = 0;
 }

 return ret;
}
