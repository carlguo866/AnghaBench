
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {void* rx_dropped; void* rx_bytes; void* rx_packets; void* tx_dropped; void* tx_bytes; void* tx_packets; } ;
struct nfp_port {scalar_t__ vnic; } ;


 scalar_t__ NFP_NET_CFG_STATS_RX_DISCARDS ;
 scalar_t__ NFP_NET_CFG_STATS_RX_FRAMES ;
 scalar_t__ NFP_NET_CFG_STATS_RX_OCTETS ;
 scalar_t__ NFP_NET_CFG_STATS_TX_DISCARDS ;
 scalar_t__ NFP_NET_CFG_STATS_TX_FRAMES ;
 scalar_t__ NFP_NET_CFG_STATS_TX_OCTETS ;
 void* readq (scalar_t__) ;

__attribute__((used)) static void
nfp_repr_vnic_get_stats64(struct nfp_port *port,
     struct rtnl_link_stats64 *stats)
{



 stats->tx_packets = readq(port->vnic + NFP_NET_CFG_STATS_RX_FRAMES);
 stats->tx_bytes = readq(port->vnic + NFP_NET_CFG_STATS_RX_OCTETS);
 stats->tx_dropped = readq(port->vnic + NFP_NET_CFG_STATS_RX_DISCARDS);

 stats->rx_packets = readq(port->vnic + NFP_NET_CFG_STATS_TX_FRAMES);
 stats->rx_bytes = readq(port->vnic + NFP_NET_CFG_STATS_TX_OCTETS);
 stats->rx_dropped = readq(port->vnic + NFP_NET_CFG_STATS_TX_DISCARDS);
}
