
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct net_device_stats {int tx_errors; int rx_crc_errors; int rx_length_errors; int rx_dropped; int tx_packets; int tx_bytes; int rx_packets; int rx_bytes; } ;
struct net_device {int dummy; } ;
struct nes_vnic {int nic_index; struct net_device_stats netstats; struct nes_device* nesdev; int endnode_nstat_tx_frames; int endnode_nstat_tx_octets; int endnode_nstat_rx_frames; int endnode_nstat_rx_octets; int endnode_nstat_rx_discard; } ;
struct nes_device {int mac_index; int mac_tx_errors; int mac_rx_crc_errors; int mac_rx_errors; int mac_rx_symbol_err_frames; int mac_rx_jabber_frames; int mac_rx_oversized_frames; int mac_rx_short_frames; } ;


 scalar_t__ NES_IDX_ENDNODE0_NSTAT_RX_DISCARD ;
 scalar_t__ NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_HI ;
 scalar_t__ NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_LO ;
 scalar_t__ NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_HI ;
 scalar_t__ NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_LO ;
 scalar_t__ NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_HI ;
 scalar_t__ NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_LO ;
 scalar_t__ NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_HI ;
 scalar_t__ NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_LO ;
 scalar_t__ NES_IDX_MAC_RX_CRC_ERR_FRAMES ;
 scalar_t__ NES_IDX_MAC_RX_JABBER_FRAMES ;
 scalar_t__ NES_IDX_MAC_RX_LENGTH_ERR_FRAMES ;
 scalar_t__ NES_IDX_MAC_RX_OVERSIZED_FRAMES ;
 scalar_t__ NES_IDX_MAC_RX_SHORT_FRAMES ;
 scalar_t__ NES_IDX_MAC_RX_SYMBOL_ERR_FRAMES ;
 scalar_t__ NES_IDX_MAC_TX_ERRORS ;
 scalar_t__ nes_read_indexed (struct nes_device*,scalar_t__) ;
 struct nes_vnic* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *nes_netdev_get_stats(struct net_device *netdev)
{
 struct nes_vnic *nesvnic = netdev_priv(netdev);
 struct nes_device *nesdev = nesvnic->nesdev;
 u64 u64temp;
 u32 u32temp;

 u32temp = nes_read_indexed(nesdev,
   NES_IDX_ENDNODE0_NSTAT_RX_DISCARD + (nesvnic->nic_index*0x200));
 nesvnic->netstats.rx_dropped += u32temp;
 nesvnic->endnode_nstat_rx_discard += u32temp;

 u64temp = (u64)nes_read_indexed(nesdev,
   NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_LO + (nesvnic->nic_index*0x200));
 u64temp += ((u64)nes_read_indexed(nesdev,
   NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_HI + (nesvnic->nic_index*0x200))) << 32;

 nesvnic->endnode_nstat_rx_octets += u64temp;
 nesvnic->netstats.rx_bytes += u64temp;

 u64temp = (u64)nes_read_indexed(nesdev,
   NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_LO + (nesvnic->nic_index*0x200));
 u64temp += ((u64)nes_read_indexed(nesdev,
   NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_HI + (nesvnic->nic_index*0x200))) << 32;

 nesvnic->endnode_nstat_rx_frames += u64temp;
 nesvnic->netstats.rx_packets += u64temp;

 u64temp = (u64)nes_read_indexed(nesdev,
   NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_LO + (nesvnic->nic_index*0x200));
 u64temp += ((u64)nes_read_indexed(nesdev,
   NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_HI + (nesvnic->nic_index*0x200))) << 32;

 nesvnic->endnode_nstat_tx_octets += u64temp;
 nesvnic->netstats.tx_bytes += u64temp;

 u64temp = (u64)nes_read_indexed(nesdev,
   NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_LO + (nesvnic->nic_index*0x200));
 u64temp += ((u64)nes_read_indexed(nesdev,
   NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_HI + (nesvnic->nic_index*0x200))) << 32;

 nesvnic->endnode_nstat_tx_frames += u64temp;
 nesvnic->netstats.tx_packets += u64temp;

 u32temp = nes_read_indexed(nesdev,
   NES_IDX_MAC_RX_SHORT_FRAMES + (nesvnic->nesdev->mac_index*0x200));
 nesvnic->netstats.rx_dropped += u32temp;
 nesvnic->nesdev->mac_rx_errors += u32temp;
 nesvnic->nesdev->mac_rx_short_frames += u32temp;

 u32temp = nes_read_indexed(nesdev,
   NES_IDX_MAC_RX_OVERSIZED_FRAMES + (nesvnic->nesdev->mac_index*0x200));
 nesvnic->netstats.rx_dropped += u32temp;
 nesvnic->nesdev->mac_rx_errors += u32temp;
 nesvnic->nesdev->mac_rx_oversized_frames += u32temp;

 u32temp = nes_read_indexed(nesdev,
   NES_IDX_MAC_RX_JABBER_FRAMES + (nesvnic->nesdev->mac_index*0x200));
 nesvnic->netstats.rx_dropped += u32temp;
 nesvnic->nesdev->mac_rx_errors += u32temp;
 nesvnic->nesdev->mac_rx_jabber_frames += u32temp;

 u32temp = nes_read_indexed(nesdev,
   NES_IDX_MAC_RX_SYMBOL_ERR_FRAMES + (nesvnic->nesdev->mac_index*0x200));
 nesvnic->netstats.rx_dropped += u32temp;
 nesvnic->nesdev->mac_rx_errors += u32temp;
 nesvnic->nesdev->mac_rx_symbol_err_frames += u32temp;

 u32temp = nes_read_indexed(nesdev,
   NES_IDX_MAC_RX_LENGTH_ERR_FRAMES + (nesvnic->nesdev->mac_index*0x200));
 nesvnic->netstats.rx_length_errors += u32temp;
 nesvnic->nesdev->mac_rx_errors += u32temp;

 u32temp = nes_read_indexed(nesdev,
   NES_IDX_MAC_RX_CRC_ERR_FRAMES + (nesvnic->nesdev->mac_index*0x200));
 nesvnic->nesdev->mac_rx_errors += u32temp;
 nesvnic->nesdev->mac_rx_crc_errors += u32temp;
 nesvnic->netstats.rx_crc_errors += u32temp;

 u32temp = nes_read_indexed(nesdev,
   NES_IDX_MAC_TX_ERRORS + (nesvnic->nesdev->mac_index*0x200));
 nesvnic->nesdev->mac_tx_errors += u32temp;
 nesvnic->netstats.tx_errors += u32temp;

 return &nesvnic->netstats;
}
