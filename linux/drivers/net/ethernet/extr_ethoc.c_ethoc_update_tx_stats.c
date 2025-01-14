
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int collisions; int tx_bytes; int tx_packets; int tx_errors; int tx_carrier_errors; int tx_fifo_errors; int tx_aborted_errors; int tx_window_errors; } ;
struct net_device {TYPE_1__ stats; int dev; } ;
struct ethoc_bd {int stat; } ;
struct ethoc {struct net_device* netdev; } ;


 int TX_BD_CS ;
 int TX_BD_LC ;
 int TX_BD_RL ;
 int TX_BD_STATS ;
 int TX_BD_UR ;
 int dev_err (int *,char*) ;

__attribute__((used)) static void ethoc_update_tx_stats(struct ethoc *dev, struct ethoc_bd *bd)
{
 struct net_device *netdev = dev->netdev;

 if (bd->stat & TX_BD_LC) {
  dev_err(&netdev->dev, "TX: late collision\n");
  netdev->stats.tx_window_errors++;
 }

 if (bd->stat & TX_BD_RL) {
  dev_err(&netdev->dev, "TX: retransmit limit\n");
  netdev->stats.tx_aborted_errors++;
 }

 if (bd->stat & TX_BD_UR) {
  dev_err(&netdev->dev, "TX: underrun\n");
  netdev->stats.tx_fifo_errors++;
 }

 if (bd->stat & TX_BD_CS) {
  dev_err(&netdev->dev, "TX: carrier sense lost\n");
  netdev->stats.tx_carrier_errors++;
 }

 if (bd->stat & TX_BD_STATS)
  netdev->stats.tx_errors++;

 netdev->stats.collisions += (bd->stat >> 4) & 0xf;
 netdev->stats.tx_bytes += bd->stat >> 16;
 netdev->stats.tx_packets++;
}
