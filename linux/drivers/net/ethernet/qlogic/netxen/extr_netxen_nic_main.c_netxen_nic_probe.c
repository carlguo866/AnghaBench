
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ revision; int dev; int devfn; } ;
struct TYPE_2__ {int pci_func; scalar_t__ revision_id; int board_type; int port_type; int mem_lock; int crb_lock; } ;
struct netxen_adapter {int portnum; int need_fw_reset; int physical_port; struct net_device* netdev; struct pci_dev* pdev; TYPE_1__ ahw; int ip_list; int mac_list; int tx_clean_lock; } ;
struct net_device {int name; int max_mtu; scalar_t__ min_mtu; } ;


 int CRB_V2P (int) ;
 int ENODEV ;
 int ENOMEM ;
 int FW_POLL_DELAY ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;




 int NXRD32 (struct netxen_adapter*,int ) ;
 int NXWR32 (struct netxen_adapter*,int ,int ) ;
 int NX_CRB_DEV_REF_COUNT ;
 scalar_t__ NX_IS_REVISION_P2 (scalar_t__) ;
 scalar_t__ NX_IS_REVISION_P3 (scalar_t__) ;
 scalar_t__ NX_P3_A0 ;
 scalar_t__ NX_P3_B1 ;
 int P2_MAX_MTU ;
 int P3_MAX_MTU ;
 int PCI_FUNC (int ) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int THIS_MODULE ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ) ;
 int free_netdev (struct net_device*) ;
 int module_name (int ) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;
 int netxen_check_flash_fw_compatibility (struct netxen_adapter*) ;
 int netxen_cleanup_pci_map (struct netxen_adapter*) ;
 int netxen_create_diag_entries (struct netxen_adapter*) ;
 int netxen_free_dummy_dma (struct netxen_adapter*) ;
 int netxen_fw_poll_work ;
 int netxen_mask_aer_correctable (struct netxen_adapter*) ;
 int netxen_nic_clear_stats (struct netxen_adapter*) ;
 int netxen_nic_driver_name ;
 int netxen_nic_get_board_info (struct netxen_adapter*) ;
 int netxen_read_ula_info (struct netxen_adapter*) ;
 int netxen_schedule_work (struct netxen_adapter*,int ,int ) ;
 int netxen_setup_intr (struct netxen_adapter*) ;
 int netxen_setup_netdev (struct netxen_adapter*,struct net_device*) ;
 int netxen_setup_pci_map (struct netxen_adapter*) ;
 int netxen_start_firmware (struct netxen_adapter*) ;
 int netxen_teardown_intr (struct netxen_adapter*) ;
 int nx_decr_dev_ref_cnt (struct netxen_adapter*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct netxen_adapter*) ;
 int pci_set_master (struct pci_dev*) ;
 int pr_warn (char*,int ,scalar_t__,scalar_t__) ;
 int rwlock_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
netxen_nic_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct net_device *netdev = ((void*)0);
 struct netxen_adapter *adapter = ((void*)0);
 int i = 0, err;
 int pci_func_id = PCI_FUNC(pdev->devfn);
 uint8_t revision_id;
 u32 val;

 if (pdev->revision >= NX_P3_A0 && pdev->revision <= NX_P3_B1) {
  pr_warn("%s: chip revisions between 0x%x-0x%x will not be enabled\n",
   module_name(THIS_MODULE), NX_P3_A0, NX_P3_B1);
  return -ENODEV;
 }

 if ((err = pci_enable_device(pdev)))
  return err;

 if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM)) {
  err = -ENODEV;
  goto err_out_disable_pdev;
 }

 if ((err = pci_request_regions(pdev, netxen_nic_driver_name)))
  goto err_out_disable_pdev;

 if (NX_IS_REVISION_P3(pdev->revision))
  pci_enable_pcie_error_reporting(pdev);

 pci_set_master(pdev);

 netdev = alloc_etherdev(sizeof(struct netxen_adapter));
 if(!netdev) {
  err = -ENOMEM;
  goto err_out_free_res;
 }

 SET_NETDEV_DEV(netdev, &pdev->dev);

 adapter = netdev_priv(netdev);
 adapter->netdev = netdev;
 adapter->pdev = pdev;
 adapter->ahw.pci_func = pci_func_id;

 revision_id = pdev->revision;
 adapter->ahw.revision_id = revision_id;

 rwlock_init(&adapter->ahw.crb_lock);
 spin_lock_init(&adapter->ahw.mem_lock);

 spin_lock_init(&adapter->tx_clean_lock);
 INIT_LIST_HEAD(&adapter->mac_list);
 INIT_LIST_HEAD(&adapter->ip_list);

 err = netxen_setup_pci_map(adapter);
 if (err)
  goto err_out_free_netdev;


 adapter->portnum = pci_func_id;

 err = netxen_nic_get_board_info(adapter);
 if (err) {
  dev_err(&pdev->dev, "Error getting board config info.\n");
  goto err_out_iounmap;
 }






 switch (adapter->ahw.board_type) {
 case 130:
 case 131:
  if (pci_func_id >= 2)
   adapter->portnum = pci_func_id - 2;
  break;
 default:
  break;
 }

 err = netxen_check_flash_fw_compatibility(adapter);
 if (err)
  goto err_out_iounmap;

 if (adapter->portnum == 0) {
  val = NXRD32(adapter, NX_CRB_DEV_REF_COUNT);
  if (val != 0xffffffff && val != 0) {
   NXWR32(adapter, NX_CRB_DEV_REF_COUNT, 0);
   adapter->need_fw_reset = 1;
  }
 }

 err = netxen_start_firmware(adapter);
 if (err)
  goto err_out_decr_ref;




 adapter->physical_port = adapter->portnum;
 if (NX_IS_REVISION_P2(adapter->ahw.revision_id)) {
  i = NXRD32(adapter, CRB_V2P(adapter->portnum));
  if (i != 0x55555555)
   adapter->physical_port = i;
 }


 netdev->min_mtu = 0;
 if (NX_IS_REVISION_P3(adapter->ahw.revision_id))
  netdev->max_mtu = P3_MAX_MTU;
 else
  netdev->max_mtu = P2_MAX_MTU;

 netxen_nic_clear_stats(adapter);

 err = netxen_setup_intr(adapter);

 if (err) {
  dev_err(&adapter->pdev->dev,
   "Failed to setup interrupts, error = %d\n", err);
  goto err_out_disable_msi;
 }

 netxen_read_ula_info(adapter);

 err = netxen_setup_netdev(adapter, netdev);
 if (err)
  goto err_out_disable_msi;

 pci_set_drvdata(pdev, adapter);

 netxen_schedule_work(adapter, netxen_fw_poll_work, FW_POLL_DELAY);

 switch (adapter->ahw.port_type) {
 case 129:
  dev_info(&adapter->pdev->dev, "%s: GbE port initialized\n",
    adapter->netdev->name);
  break;
 case 128:
  dev_info(&adapter->pdev->dev, "%s: XGbE port initialized\n",
    adapter->netdev->name);
  break;
 }

 netxen_create_diag_entries(adapter);

 return 0;

err_out_disable_msi:
 netxen_teardown_intr(adapter);

 netxen_free_dummy_dma(adapter);

err_out_decr_ref:
 nx_decr_dev_ref_cnt(adapter);

err_out_iounmap:
 netxen_cleanup_pci_map(adapter);

err_out_free_netdev:
 free_netdev(netdev);

err_out_free_res:
 pci_release_regions(pdev);

err_out_disable_pdev:
 pci_disable_device(pdev);
 return err;
}
