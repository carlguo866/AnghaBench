
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int PCI_CLOCK_CTL ;
 int PCI_PMOS0_CONTROL ;
 int PCI_PMOS1_CONTROL ;
 unsigned char PMOS0_ACTIVE_BITS ;
 unsigned char PMOS1_ACTIVE_BITS ;
 int dev_dbg (int *,char*,...) ;
 int pci_read_config_byte (struct pci_dev*,int ,unsigned char*) ;
 scalar_t__ pci_resource_flags (struct pci_dev*,int) ;
 int pci_write_config_byte (struct pci_dev*,int ,unsigned char) ;

__attribute__((used)) static int jmb38x_ms_pmos(struct pci_dev *pdev, int flag)
{
 unsigned char val;

 pci_read_config_byte(pdev, PCI_PMOS0_CONTROL, &val);
 if (flag)
  val |= PMOS0_ACTIVE_BITS;
 else
  val &= ~PMOS0_ACTIVE_BITS;
 pci_write_config_byte(pdev, PCI_PMOS0_CONTROL, val);
 dev_dbg(&pdev->dev, "JMB38x: set PMOS0 val 0x%x\n", val);

 if (pci_resource_flags(pdev, 1)) {
  pci_read_config_byte(pdev, PCI_PMOS1_CONTROL, &val);
  if (flag)
   val |= PMOS1_ACTIVE_BITS;
  else
   val &= ~PMOS1_ACTIVE_BITS;
  pci_write_config_byte(pdev, PCI_PMOS1_CONTROL, val);
  dev_dbg(&pdev->dev, "JMB38x: set PMOS1 val 0x%x\n", val);
 }

 pci_read_config_byte(pdev, PCI_CLOCK_CTL, &val);
 pci_write_config_byte(pdev, PCI_CLOCK_CTL, val & ~0x0f);
 pci_write_config_byte(pdev, PCI_CLOCK_CTL, val | 0x01);
 dev_dbg(&pdev->dev, "Clock Control by PCI config is disabled!\n");

        return 0;
}
