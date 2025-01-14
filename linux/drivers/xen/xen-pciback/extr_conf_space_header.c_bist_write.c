
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int PCI_BIST_START ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static int bist_write(struct pci_dev *dev, int offset, u8 value, void *data)
{
 u8 cur_value;
 int err;

 err = pci_read_config_byte(dev, offset, &cur_value);
 if (err)
  goto out;

 if ((cur_value & ~PCI_BIST_START) == (value & ~PCI_BIST_START)
     || value == PCI_BIST_START)
  err = pci_write_config_byte(dev, offset, value);

out:
 return err;
}
