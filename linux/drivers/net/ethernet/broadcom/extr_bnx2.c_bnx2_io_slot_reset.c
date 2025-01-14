
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct bnx2 {int flags; } ;
typedef scalar_t__ pci_ers_result_t ;


 int BNX2_FLAG_AER_ENABLED ;
 scalar_t__ PCI_ERS_RESULT_DISCONNECT ;
 scalar_t__ PCI_ERS_RESULT_RECOVERED ;
 int bnx2_init_nic (struct bnx2*,int) ;
 int bnx2_napi_enable (struct bnx2*) ;
 int dev_close (struct net_device*) ;
 int dev_err (int *,char*) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static pci_ers_result_t bnx2_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct bnx2 *bp = netdev_priv(dev);
 pci_ers_result_t result = PCI_ERS_RESULT_DISCONNECT;
 int err = 0;

 rtnl_lock();
 if (pci_enable_device(pdev)) {
  dev_err(&pdev->dev,
   "Cannot re-enable PCI device after reset\n");
 } else {
  pci_set_master(pdev);
  pci_restore_state(pdev);
  pci_save_state(pdev);

  if (netif_running(dev))
   err = bnx2_init_nic(bp, 1);

  if (!err)
   result = PCI_ERS_RESULT_RECOVERED;
 }

 if (result != PCI_ERS_RESULT_RECOVERED && netif_running(dev)) {
  bnx2_napi_enable(bp);
  dev_close(dev);
 }
 rtnl_unlock();

 if (!(bp->flags & BNX2_FLAG_AER_ENABLED))
  return result;

 return result;
}
