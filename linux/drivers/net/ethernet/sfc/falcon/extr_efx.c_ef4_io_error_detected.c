
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ef4_nic {scalar_t__ state; scalar_t__ reset_pending; } ;
typedef int pci_ers_result_t ;
typedef enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_RECOVERED ;
 scalar_t__ STATE_DISABLED ;
 scalar_t__ STATE_RECOVERY ;
 int ef4_device_detach_sync (struct ef4_nic*) ;
 int ef4_disable_interrupts (struct ef4_nic*) ;
 int ef4_stop_all (struct ef4_nic*) ;
 int pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 struct ef4_nic* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static pci_ers_result_t ef4_io_error_detected(struct pci_dev *pdev,
           enum pci_channel_state state)
{
 pci_ers_result_t status = PCI_ERS_RESULT_RECOVERED;
 struct ef4_nic *efx = pci_get_drvdata(pdev);

 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 rtnl_lock();

 if (efx->state != STATE_DISABLED) {
  efx->state = STATE_RECOVERY;
  efx->reset_pending = 0;

  ef4_device_detach_sync(efx);

  ef4_stop_all(efx);
  ef4_disable_interrupts(efx);

  status = PCI_ERS_RESULT_NEED_RESET;
 } else {



  status = PCI_ERS_RESULT_RECOVERED;
 }

 rtnl_unlock();

 pci_disable_device(pdev);

 return status;
}
