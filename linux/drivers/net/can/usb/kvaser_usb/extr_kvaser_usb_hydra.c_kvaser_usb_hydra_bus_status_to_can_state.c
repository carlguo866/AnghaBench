
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvaser_usb_net_priv {int netdev; } ;
struct can_berr_counter {int txerr; int rxerr; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int CAN_STATE_BUS_OFF ;
 int CAN_STATE_ERROR_ACTIVE ;
 int CAN_STATE_ERROR_PASSIVE ;
 int CAN_STATE_ERROR_WARNING ;
 int KVASER_USB_HYDRA_BUS_BUS_OFF ;
 int KVASER_USB_HYDRA_BUS_ERR_ACT ;
 int KVASER_USB_HYDRA_BUS_ERR_PASS ;
 int netdev_warn (int ,char*,int,int) ;

__attribute__((used)) static void
kvaser_usb_hydra_bus_status_to_can_state(const struct kvaser_usb_net_priv *priv,
      u8 bus_status,
      const struct can_berr_counter *bec,
      enum can_state *new_state)
{
 if (bus_status & KVASER_USB_HYDRA_BUS_BUS_OFF) {
  *new_state = CAN_STATE_BUS_OFF;
 } else if (bus_status & KVASER_USB_HYDRA_BUS_ERR_PASS) {
  *new_state = CAN_STATE_ERROR_PASSIVE;
 } else if (bus_status == KVASER_USB_HYDRA_BUS_ERR_ACT) {
  if (bec->txerr >= 128 || bec->rxerr >= 128) {
   netdev_warn(priv->netdev,
        "ERR_ACTIVE but err tx=%u or rx=%u >=128\n",
        bec->txerr, bec->rxerr);
   *new_state = CAN_STATE_ERROR_PASSIVE;
  } else if (bec->txerr >= 96 || bec->rxerr >= 96) {
   *new_state = CAN_STATE_ERROR_WARNING;
  } else {
   *new_state = CAN_STATE_ERROR_ACTIVE;
  }
 }
}
