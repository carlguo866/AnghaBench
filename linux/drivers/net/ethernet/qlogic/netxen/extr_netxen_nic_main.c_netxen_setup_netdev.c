
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_3__ {int revision_id; } ;
struct netxen_adapter {int max_mc_count; int capabilities; int tx_timeout_task; TYPE_2__* msix_entries; scalar_t__ pci_using_dac; TYPE_1__ ahw; scalar_t__ mc_enabled; struct pci_dev* pdev; } ;
struct net_device {int watchdog_timeo; int hw_features; int vlan_features; int features; int irq; int * ethtool_ops; int mtu; int * netdev_ops; } ;
struct TYPE_4__ {int vector; } ;


 int HZ ;
 int INIT_WORK (int *,int ) ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NX_FW_CAPABILITY_FVLANTX ;
 int NX_FW_CAPABILITY_HW_LRO ;
 scalar_t__ NX_IS_REVISION_P3 (int ) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int netif_carrier_off (struct net_device*) ;
 int netxen_netdev_ops ;
 int netxen_nic_change_mtu (struct net_device*,int ) ;
 int netxen_nic_ethtool_ops ;
 scalar_t__ netxen_read_mac_addr (struct netxen_adapter*) ;
 int netxen_tx_timeout_task ;
 int register_netdev (struct net_device*) ;

__attribute__((used)) static int
netxen_setup_netdev(struct netxen_adapter *adapter,
  struct net_device *netdev)
{
 int err = 0;
 struct pci_dev *pdev = adapter->pdev;

 adapter->mc_enabled = 0;
 if (NX_IS_REVISION_P3(adapter->ahw.revision_id))
  adapter->max_mc_count = 38;
 else
  adapter->max_mc_count = 16;

 netdev->netdev_ops = &netxen_netdev_ops;
 netdev->watchdog_timeo = 5*HZ;

 netxen_nic_change_mtu(netdev, netdev->mtu);

 netdev->ethtool_ops = &netxen_nic_ethtool_ops;

 netdev->hw_features = NETIF_F_SG | NETIF_F_IP_CSUM | NETIF_F_TSO |
                       NETIF_F_RXCSUM;

 if (NX_IS_REVISION_P3(adapter->ahw.revision_id))
  netdev->hw_features |= NETIF_F_IPV6_CSUM | NETIF_F_TSO6;

 netdev->vlan_features |= netdev->hw_features;

 if (adapter->pci_using_dac) {
  netdev->features |= NETIF_F_HIGHDMA;
  netdev->vlan_features |= NETIF_F_HIGHDMA;
 }

 if (adapter->capabilities & NX_FW_CAPABILITY_FVLANTX)
  netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX;

 if (adapter->capabilities & NX_FW_CAPABILITY_HW_LRO)
  netdev->hw_features |= NETIF_F_LRO;

 netdev->features |= netdev->hw_features;

 netdev->irq = adapter->msix_entries[0].vector;

 INIT_WORK(&adapter->tx_timeout_task, netxen_tx_timeout_task);

 if (netxen_read_mac_addr(adapter))
  dev_warn(&pdev->dev, "failed to read mac addr\n");

 netif_carrier_off(netdev);

 err = register_netdev(netdev);
 if (err) {
  dev_err(&pdev->dev, "failed to register net device\n");
  return err;
 }

 return 0;
}
