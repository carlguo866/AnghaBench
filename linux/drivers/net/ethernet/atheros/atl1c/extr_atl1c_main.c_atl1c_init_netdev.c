
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int hw_features; int features; scalar_t__ min_mtu; int watchdog_timeo; int * netdev_ops; } ;


 int AT_TX_WATCHDOG ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ ETH_ZLEN ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 scalar_t__ VLAN_HLEN ;
 int atl1c_netdev_ops ;
 int atl1c_set_ethtool_ops (struct net_device*) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;

__attribute__((used)) static int atl1c_init_netdev(struct net_device *netdev, struct pci_dev *pdev)
{
 SET_NETDEV_DEV(netdev, &pdev->dev);
 pci_set_drvdata(pdev, netdev);

 netdev->netdev_ops = &atl1c_netdev_ops;
 netdev->watchdog_timeo = AT_TX_WATCHDOG;
 netdev->min_mtu = ETH_ZLEN - (ETH_HLEN + VLAN_HLEN);
 atl1c_set_ethtool_ops(netdev);


 netdev->hw_features = NETIF_F_SG |
    NETIF_F_HW_CSUM |
    NETIF_F_HW_VLAN_CTAG_RX |
    NETIF_F_TSO |
    NETIF_F_TSO6;
 netdev->features = netdev->hw_features |
    NETIF_F_HW_VLAN_CTAG_TX;
 return 0;
}
