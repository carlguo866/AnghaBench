
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_rx; int irq_tx; } ;
struct wil6210_priv {int n_msi; TYPE_1__ txrx_ops; scalar_t__ use_enhanced_dma_hw; } ;


 int IRQF_SHARED ;
 int WIL_NAME ;
 int request_threaded_irq (int,int ,int ,int ,int ,struct wil6210_priv*) ;
 int wil6210_hardirq ;
 int wil6210_irq_rx ;
 int wil6210_irq_rx_edma ;
 int wil6210_irq_tx ;
 int wil6210_irq_tx_edma ;
 int wil6210_request_3msi (struct wil6210_priv*,int) ;
 int wil6210_thread_irq ;
 int wil_dbg_misc (struct wil6210_priv*,char*,char*,int) ;

int wil6210_init_irq(struct wil6210_priv *wil, int irq)
{
 int rc;

 wil_dbg_misc(wil, "init_irq: %s, n_msi=%d\n",
       wil->n_msi ? "MSI" : "INTx", wil->n_msi);

 if (wil->use_enhanced_dma_hw) {
  wil->txrx_ops.irq_tx = wil6210_irq_tx_edma;
  wil->txrx_ops.irq_rx = wil6210_irq_rx_edma;
 } else {
  wil->txrx_ops.irq_tx = wil6210_irq_tx;
  wil->txrx_ops.irq_rx = wil6210_irq_rx;
 }

 if (wil->n_msi == 3)
  rc = wil6210_request_3msi(wil, irq);
 else
  rc = request_threaded_irq(irq, wil6210_hardirq,
       wil6210_thread_irq,
       wil->n_msi ? 0 : IRQF_SHARED,
       WIL_NAME, wil);
 return rc;
}
