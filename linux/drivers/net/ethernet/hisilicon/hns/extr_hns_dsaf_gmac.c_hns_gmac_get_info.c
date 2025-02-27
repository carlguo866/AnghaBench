
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int u16 ;
struct mac_info {int pad_and_crc_en; int port_en; int duplex; void* tx_pause_en; void* rx_pause_en; int speed; int tx_pause_time; int auto_neg; } ;
struct hns_gmac_port_mode_cfg {int an_enable; scalar_t__ pad_enable; scalar_t__ crc_add; int member_1; int member_0; } ;
typedef enum hns_port_mode { ____Placeholder_hns_port_mode } hns_port_mode ;
typedef enum hns_gmac_duplex_mdoe { ____Placeholder_hns_gmac_duplex_mdoe } hns_gmac_duplex_mdoe ;




 int GMAC_10M_MII ;

 int MAC_SPEED_10 ;
 int MAC_SPEED_100 ;
 int MAC_SPEED_1000 ;
 int hns_gmac_get_duplex_type (void*,int*) ;
 int hns_gmac_get_en (void*,void**,void**) ;
 int hns_gmac_get_pausefrm_cfg (void*,void**,void**) ;
 int hns_gmac_get_port_mode (void*,int*) ;
 int hns_gmac_get_tx_auto_pause_frames (void*,int *) ;
 int hns_gmac_port_mode_get (void*,struct hns_gmac_port_mode_cfg*) ;

__attribute__((used)) static void hns_gmac_get_info(void *mac_drv, struct mac_info *mac_info)
{
 enum hns_gmac_duplex_mdoe duplex;
 enum hns_port_mode speed;
 u32 rx_pause;
 u32 tx_pause;
 u32 rx;
 u32 tx;
 u16 fc_tx_timer;
 struct hns_gmac_port_mode_cfg port_mode = { GMAC_10M_MII, 0 };

 hns_gmac_port_mode_get(mac_drv, &port_mode);
 mac_info->pad_and_crc_en = port_mode.crc_add && port_mode.pad_enable;
 mac_info->auto_neg = port_mode.an_enable;

 hns_gmac_get_tx_auto_pause_frames(mac_drv, &fc_tx_timer);
 mac_info->tx_pause_time = fc_tx_timer;

 hns_gmac_get_en(mac_drv, &rx, &tx);
 mac_info->port_en = rx && tx;

 hns_gmac_get_duplex_type(mac_drv, &duplex);
 mac_info->duplex = duplex;

 hns_gmac_get_port_mode(mac_drv, &speed);
 switch (speed) {
 case 128:
  mac_info->speed = MAC_SPEED_10;
  break;
 case 129:
  mac_info->speed = MAC_SPEED_100;
  break;
 case 130:
  mac_info->speed = MAC_SPEED_1000;
  break;
 default:
  mac_info->speed = 0;
  break;
 }

 hns_gmac_get_pausefrm_cfg(mac_drv, &rx_pause, &tx_pause);
 mac_info->rx_pause_en = rx_pause;
 mac_info->tx_pause_en = tx_pause;
}
