
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct driver_data {TYPE_2__* pdev; TYPE_1__* port; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ mmio; } ;


 int PORT_IRQ_CONNECT ;
 int PORT_IRQ_HANDLED ;
 int PORT_IRQ_IF_ERR ;
 int PORT_IRQ_PHYRDY ;
 int PORT_IRQ_TF_ERR ;
 scalar_t__ PORT_SCR_ERR ;
 int dev_warn (int *,char*,...) ;
 scalar_t__ likely (int) ;
 int mtip_handle_tfe (struct driver_data*) ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void mtip_process_errors(struct driver_data *dd, u32 port_stat)
{
 if (likely(port_stat & (PORT_IRQ_TF_ERR | PORT_IRQ_IF_ERR)))
  mtip_handle_tfe(dd);

 if (unlikely(port_stat & PORT_IRQ_CONNECT)) {
  dev_warn(&dd->pdev->dev,
   "Clearing PxSERR.DIAG.x\n");
  writel((1 << 26), dd->port->mmio + PORT_SCR_ERR);
 }

 if (unlikely(port_stat & PORT_IRQ_PHYRDY)) {
  dev_warn(&dd->pdev->dev,
   "Clearing PxSERR.DIAG.n\n");
  writel((1 << 16), dd->port->mmio + PORT_SCR_ERR);
 }

 if (unlikely(port_stat & ~PORT_IRQ_HANDLED)) {
  dev_warn(&dd->pdev->dev,
   "Port stat errors %x unhandled\n",
   (port_stat & ~PORT_IRQ_HANDLED));
 }
}
