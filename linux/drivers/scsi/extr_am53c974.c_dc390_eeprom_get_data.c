
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static u16 dc390_eeprom_get_data(struct pci_dev *pdev)
{
 int i;
 u16 wval = 0;
 u8 bval;

 for (i = 0; i < 16; i++) {
  wval <<= 1;

  pci_write_config_byte(pdev, 0x80, 0x80);
  udelay(160);
  pci_write_config_byte(pdev, 0x80, 0x40);
  udelay(160);
  pci_read_config_byte(pdev, 0x00, &bval);

  if (bval == 0x22)
   wval |= 1;
 }

 return wval;
}
