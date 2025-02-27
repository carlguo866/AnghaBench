
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl8169_private {struct pci_dev* pci_dev; } ;
struct pci_dev {scalar_t__ broken_parity_status; } ;
struct net_device {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int PCI_STATUS ;
 int PCI_STATUS_DETECTED_PARITY ;
 int PCI_STATUS_REC_MASTER_ABORT ;
 int PCI_STATUS_REC_TARGET_ABORT ;
 int PCI_STATUS_SIG_SYSTEM_ERROR ;
 int PCI_STATUS_SIG_TARGET_ABORT ;
 int RTL_FLAG_TASK_RESET_PENDING ;
 int intr ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int netif_err (struct rtl8169_private*,int ,struct net_device*,char*,int,int) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int rtl_schedule_task (struct rtl8169_private*,int ) ;

__attribute__((used)) static void rtl8169_pcierr_interrupt(struct net_device *dev)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct pci_dev *pdev = tp->pci_dev;
 u16 pci_status, pci_cmd;

 pci_read_config_word(pdev, PCI_COMMAND, &pci_cmd);
 pci_read_config_word(pdev, PCI_STATUS, &pci_status);

 netif_err(tp, intr, dev, "PCI error (cmd = 0x%04x, status = 0x%04x)\n",
    pci_cmd, pci_status);
 if (pdev->broken_parity_status)
  pci_cmd &= ~PCI_COMMAND_PARITY;
 else
  pci_cmd |= PCI_COMMAND_SERR | PCI_COMMAND_PARITY;

 pci_write_config_word(pdev, PCI_COMMAND, pci_cmd);

 pci_write_config_word(pdev, PCI_STATUS,
  pci_status & (PCI_STATUS_DETECTED_PARITY |
  PCI_STATUS_SIG_SYSTEM_ERROR | PCI_STATUS_REC_MASTER_ABORT |
  PCI_STATUS_REC_TARGET_ABORT | PCI_STATUS_SIG_TARGET_ABORT));

 rtl_schedule_task(tp, RTL_FLAG_TASK_RESET_PENDING);
}
