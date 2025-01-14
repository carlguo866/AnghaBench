
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef short u_long ;
struct net_device {short name; short irq; int dev_addr; } ;
struct de4x5_private {int rxRingSize; int txRingSize; TYPE_2__* tx_ring; TYPE_1__* rx_ring; } ;
struct TYPE_4__ {int buf; int status; } ;
struct TYPE_3__ {int buf; int status; } ;


 int DEBUG_OPEN ;
 int de4x5_debug ;
 int le32_to_cpu (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int printk (char*,...) ;

__attribute__((used)) static void
de4x5_dbg_open(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    int i;

    if (de4x5_debug & DEBUG_OPEN) {
 printk("%s: de4x5 opening with irq %d\n",dev->name,dev->irq);
 printk("\tphysical address: %pM\n", dev->dev_addr);
 printk("Descriptor head addresses:\n");
 printk("\t0x%8.8lx  0x%8.8lx\n",(u_long)lp->rx_ring,(u_long)lp->tx_ring);
 printk("Descriptor addresses:\nRX: ");
 for (i=0;i<lp->rxRingSize-1;i++){
     if (i < 3) {
  printk("0x%8.8lx  ",(u_long)&lp->rx_ring[i].status);
     }
 }
 printk("...0x%8.8lx\n",(u_long)&lp->rx_ring[i].status);
 printk("TX: ");
 for (i=0;i<lp->txRingSize-1;i++){
     if (i < 3) {
  printk("0x%8.8lx  ", (u_long)&lp->tx_ring[i].status);
     }
 }
 printk("...0x%8.8lx\n", (u_long)&lp->tx_ring[i].status);
 printk("Descriptor buffers:\nRX: ");
 for (i=0;i<lp->rxRingSize-1;i++){
     if (i < 3) {
  printk("0x%8.8x  ",le32_to_cpu(lp->rx_ring[i].buf));
     }
 }
 printk("...0x%8.8x\n",le32_to_cpu(lp->rx_ring[i].buf));
 printk("TX: ");
 for (i=0;i<lp->txRingSize-1;i++){
     if (i < 3) {
  printk("0x%8.8x  ", le32_to_cpu(lp->tx_ring[i].buf));
     }
 }
 printk("...0x%8.8x\n", le32_to_cpu(lp->tx_ring[i].buf));
 printk("Ring size:\nRX: %d\nTX: %d\n",
        (short)lp->rxRingSize,
        (short)lp->txRingSize);
    }
}
