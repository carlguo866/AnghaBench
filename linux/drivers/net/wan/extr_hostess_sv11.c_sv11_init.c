
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctrlio; int dataio; int txdma; int rxdma; struct net_device* netdevice; struct z8530_dev* dev; struct z8530_dev* private; int * irqs; } ;
struct z8530_dev {int active; int irq; scalar_t__ type; TYPE_1__ chanA; TYPE_1__ chanB; } ;
struct net_device {int base_addr; int irq; int * netdev_ops; } ;
struct TYPE_4__ {int xmit; int attach; } ;


 int GFP_KERNEL ;
 scalar_t__ Z85C30 ;
 struct net_device* alloc_hdlcdev (struct z8530_dev*) ;
 TYPE_2__* dev_to_hdlc (struct net_device*) ;
 int disable_irq (int) ;
 int dma ;
 int enable_irq (int) ;
 int free_dma (int) ;
 int free_irq (int,struct z8530_dev*) ;
 int free_netdev (struct net_device*) ;
 int hostess_attach ;
 int hostess_ops ;
 int hostess_queue_xmit ;
 int kfree (struct z8530_dev*) ;
 struct z8530_dev* kzalloc (int,int ) ;
 int outb (int,int) ;
 int pr_err (char*) ;
 int pr_warn (char*,int) ;
 scalar_t__ register_hdlc_device (struct net_device*) ;
 int release_region (int,int) ;
 scalar_t__ request_dma (int,char*) ;
 scalar_t__ request_irq (int,int ,int ,char*,struct z8530_dev*) ;
 int request_region (int,int,char*) ;
 int z8530_channel_load (TYPE_1__*,int ) ;
 int z8530_dead_port ;
 int z8530_describe (struct z8530_dev*,char*,int) ;
 int z8530_hdlc_kilostream ;
 int z8530_hdlc_kilostream_85230 ;
 scalar_t__ z8530_init (struct z8530_dev*) ;
 int z8530_interrupt ;
 int z8530_nop ;

__attribute__((used)) static struct z8530_dev *sv11_init(int iobase, int irq)
{
 struct z8530_dev *sv;
 struct net_device *netdev;




 if (!request_region(iobase, 8, "Comtrol SV11")) {
  pr_warn("I/O 0x%X already in use\n", iobase);
  return ((void*)0);
 }

 sv = kzalloc(sizeof(struct z8530_dev), GFP_KERNEL);
 if (!sv)
  goto err_kzalloc;





 sv->active = 0;

 sv->chanA.ctrlio = iobase + 1;
 sv->chanA.dataio = iobase + 3;
 sv->chanB.ctrlio = -1;
 sv->chanB.dataio = -1;
 sv->chanA.irqs = &z8530_nop;
 sv->chanB.irqs = &z8530_nop;

 outb(0, iobase + 4);




 if (request_irq(irq, z8530_interrupt, 0,
   "Hostess SV11", sv) < 0) {
  pr_warn("IRQ %d already in use\n", irq);
  goto err_irq;
 }

 sv->irq = irq;
 sv->chanA.private = sv;
 sv->chanA.dev = sv;
 sv->chanB.dev = sv;

 if (dma) {




  sv->chanA.txdma = 3;
  sv->chanA.rxdma = 1;
  outb(0x03 | 0x08, iobase + 4);
  if (request_dma(sv->chanA.txdma, "Hostess SV/11 (TX)"))
   goto err_txdma;

  if (dma == 1)
   if (request_dma(sv->chanA.rxdma, "Hostess SV/11 (RX)"))
    goto err_rxdma;
 }



 disable_irq(irq);





 if (z8530_init(sv)) {
  pr_err("Z8530 series device not found\n");
  enable_irq(irq);
  goto free_dma;
 }
 z8530_channel_load(&sv->chanB, z8530_dead_port);
 if (sv->type == Z85C30)
  z8530_channel_load(&sv->chanA, z8530_hdlc_kilostream);
 else
  z8530_channel_load(&sv->chanA, z8530_hdlc_kilostream_85230);

 enable_irq(irq);





 sv->chanA.netdevice = netdev = alloc_hdlcdev(sv);
 if (!netdev)
  goto free_dma;

 dev_to_hdlc(netdev)->attach = hostess_attach;
 dev_to_hdlc(netdev)->xmit = hostess_queue_xmit;
 netdev->netdev_ops = &hostess_ops;
 netdev->base_addr = iobase;
 netdev->irq = irq;

 if (register_hdlc_device(netdev)) {
  pr_err("unable to register HDLC device\n");
  free_netdev(netdev);
  goto free_dma;
 }

 z8530_describe(sv, "I/O", iobase);
 sv->active = 1;
 return sv;

free_dma:
 if (dma == 1)
  free_dma(sv->chanA.rxdma);
err_rxdma:
 if (dma)
  free_dma(sv->chanA.txdma);
err_txdma:
 free_irq(irq, sv);
err_irq:
 kfree(sv);
err_kzalloc:
 release_region(iobase, 8);
 return ((void*)0);
}
