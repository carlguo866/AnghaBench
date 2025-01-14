
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int revision; int subsystem_device; int subsystem_vendor; int device; int vendor; } ;
struct atl2_hw {int phy_configured; int preamble_len; int ipgt; int min_ifg; int ipgr1; int ipgr2; int retry_buf; int max_retry; int lcol; int jam_ipg; int max_frame_size; scalar_t__ fc_rxd_lo; scalar_t__ fc_rxd_hi; int pci_cmd_word; int revision_id; int subsystem_id; int subsystem_vendor_id; int device_id; int vendor_id; } ;
struct atl2_adapter {int ict; int flags; int stats_lock; TYPE_1__* netdev; int link_duplex; int link_speed; scalar_t__ wol; struct pci_dev* pdev; struct atl2_hw hw; } ;
struct TYPE_2__ {int mtu; } ;


 int FULL_DUPLEX ;
 int PCI_COMMAND ;
 int SPEED_0 ;
 int __ATL2_DOWN ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int atl2_sw_init(struct atl2_adapter *adapter)
{
 struct atl2_hw *hw = &adapter->hw;
 struct pci_dev *pdev = adapter->pdev;


 hw->vendor_id = pdev->vendor;
 hw->device_id = pdev->device;
 hw->subsystem_vendor_id = pdev->subsystem_vendor;
 hw->subsystem_id = pdev->subsystem_device;
 hw->revision_id = pdev->revision;

 pci_read_config_word(pdev, PCI_COMMAND, &hw->pci_cmd_word);

 adapter->wol = 0;
 adapter->ict = 50000;
 adapter->link_speed = SPEED_0;
 adapter->link_duplex = FULL_DUPLEX;

 hw->phy_configured = 0;
 hw->preamble_len = 7;
 hw->ipgt = 0x60;
 hw->min_ifg = 0x50;
 hw->ipgr1 = 0x40;
 hw->ipgr2 = 0x60;
 hw->retry_buf = 2;
 hw->max_retry = 0xf;
 hw->lcol = 0x37;
 hw->jam_ipg = 7;
 hw->fc_rxd_hi = 0;
 hw->fc_rxd_lo = 0;
 hw->max_frame_size = adapter->netdev->mtu;

 spin_lock_init(&adapter->stats_lock);

 set_bit(__ATL2_DOWN, &adapter->flags);

 return 0;
}
