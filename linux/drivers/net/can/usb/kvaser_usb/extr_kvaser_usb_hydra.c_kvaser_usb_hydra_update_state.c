
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct TYPE_3__ {int restarts; } ;
struct TYPE_4__ {int state; TYPE_1__ can_stats; scalar_t__ restart_ms; } ;
struct kvaser_usb_net_priv {TYPE_2__ can; struct net_device* netdev; } ;
struct can_frame {scalar_t__* data; scalar_t__ can_dlc; } ;
struct can_berr_counter {scalar_t__ txerr; scalar_t__ rxerr; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int CAN_STATE_BUS_OFF ;
 int CAN_STATE_ERROR_ACTIVE ;
 int CAN_STATE_STOPPED ;
 int CMD_STOP_CHIP_REQ ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int can_bus_off (struct net_device*) ;
 int can_change_state (struct net_device*,struct can_frame*,int,int) ;
 int kvaser_usb_hydra_bus_status_to_can_state (struct kvaser_usb_net_priv*,int ,struct can_berr_counter const*,int*) ;
 int kvaser_usb_hydra_send_simple_cmd_async (struct kvaser_usb_net_priv*,int ) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static void kvaser_usb_hydra_update_state(struct kvaser_usb_net_priv *priv,
       u8 bus_status,
       const struct can_berr_counter *bec)
{
 struct net_device *netdev = priv->netdev;
 struct can_frame *cf;
 struct sk_buff *skb;
 struct net_device_stats *stats;
 enum can_state new_state, old_state;

 old_state = priv->can.state;

 kvaser_usb_hydra_bus_status_to_can_state(priv, bus_status, bec,
       &new_state);

 if (new_state == old_state)
  return;





 if (old_state == CAN_STATE_STOPPED && new_state == CAN_STATE_BUS_OFF)
  return;

 skb = alloc_can_err_skb(netdev, &cf);
 if (skb) {
  enum can_state tx_state, rx_state;

  tx_state = (bec->txerr >= bec->rxerr) ?
     new_state : CAN_STATE_ERROR_ACTIVE;
  rx_state = (bec->txerr <= bec->rxerr) ?
     new_state : CAN_STATE_ERROR_ACTIVE;
  can_change_state(netdev, cf, tx_state, rx_state);
 }

 if (new_state == CAN_STATE_BUS_OFF && old_state < CAN_STATE_BUS_OFF) {
  if (!priv->can.restart_ms)
   kvaser_usb_hydra_send_simple_cmd_async
      (priv, CMD_STOP_CHIP_REQ);

  can_bus_off(netdev);
 }

 if (!skb) {
  netdev_warn(netdev, "No memory left for err_skb\n");
  return;
 }

 if (priv->can.restart_ms &&
     old_state >= CAN_STATE_BUS_OFF &&
     new_state < CAN_STATE_BUS_OFF)
  priv->can.can_stats.restarts++;

 cf->data[6] = bec->txerr;
 cf->data[7] = bec->rxerr;

 stats = &netdev->stats;
 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_rx(skb);
}
