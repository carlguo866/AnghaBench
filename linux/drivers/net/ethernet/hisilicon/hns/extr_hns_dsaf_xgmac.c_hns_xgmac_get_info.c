
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_info {int port_en; int duplex; void* tx_pause_en; void* rx_pause_en; int speed; int tx_pause_time; scalar_t__ auto_neg; void* pad_and_crc_en; } ;
struct mac_driver {int dummy; } ;


 int MAC_SPEED_10000 ;
 int XGMAC_CTL_TX_PAD_B ;
 int XGMAC_MAC_CONTROL_REG ;
 int XGMAC_MAC_PAUSE_CTRL_REG ;
 int XGMAC_MAC_PAUSE_TIME_REG ;
 int XGMAC_PAUSE_CTL_RX_B ;
 int XGMAC_PAUSE_CTL_TX_B ;
 int XGMAC_PORT_MODE_REG ;
 int XGMAC_PORT_MODE_RX_M ;
 int XGMAC_PORT_MODE_RX_S ;
 int XGMAC_PORT_MODE_TX_M ;
 int XGMAC_PORT_MODE_TX_S ;
 void* dsaf_get_bit (int ,int ) ;
 scalar_t__ dsaf_get_field (int ,int ,int ) ;
 int dsaf_read_dev (struct mac_driver*,int ) ;

__attribute__((used)) static void hns_xgmac_get_info(void *mac_drv, struct mac_info *mac_info)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;
 u32 pause_time, pause_ctrl, port_mode, ctrl_val;

 ctrl_val = dsaf_read_dev(drv, XGMAC_MAC_CONTROL_REG);
 mac_info->pad_and_crc_en = dsaf_get_bit(ctrl_val, XGMAC_CTL_TX_PAD_B);
 mac_info->auto_neg = 0;

 pause_time = dsaf_read_dev(drv, XGMAC_MAC_PAUSE_TIME_REG);
 mac_info->tx_pause_time = pause_time;

 port_mode = dsaf_read_dev(drv, XGMAC_PORT_MODE_REG);
 mac_info->port_en = dsaf_get_field(port_mode, XGMAC_PORT_MODE_TX_M,
        XGMAC_PORT_MODE_TX_S) &&
    dsaf_get_field(port_mode, XGMAC_PORT_MODE_RX_M,
            XGMAC_PORT_MODE_RX_S);
 mac_info->duplex = 1;
 mac_info->speed = MAC_SPEED_10000;

 pause_ctrl = dsaf_read_dev(drv, XGMAC_MAC_PAUSE_CTRL_REG);
 mac_info->rx_pause_en = dsaf_get_bit(pause_ctrl, XGMAC_PAUSE_CTL_RX_B);
 mac_info->tx_pause_en = dsaf_get_bit(pause_ctrl, XGMAC_PAUSE_CTL_TX_B);
}
