
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct alcor_pci_priv {int dev; } ;


 int ALCOR_CAP_START_OFFSET ;
 int dev_dbg (int ,char*,int) ;
 int pci_read_config_byte (struct pci_dev*,int,scalar_t__*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;

__attribute__((used)) static int alcor_pci_find_cap_offset(struct alcor_pci_priv *priv,
         struct pci_dev *pci)
{
 int where;
 u8 val8;
 u32 val32;

 where = ALCOR_CAP_START_OFFSET;
 pci_read_config_byte(pci, where, &val8);
 if (!val8)
  return 0;

 where = (int)val8;
 while (1) {
  pci_read_config_dword(pci, where, &val32);
  if (val32 == 0xffffffff) {
   dev_dbg(priv->dev, "find_cap_offset invalid value %x.\n",
    val32);
   return 0;
  }

  if ((val32 & 0xff) == 0x10) {
   dev_dbg(priv->dev, "pcie cap offset: %x\n", where);
   return where;
  }

  if ((val32 & 0xff00) == 0x00) {
   dev_dbg(priv->dev, "pci_find_cap_offset invalid value %x.\n",
    val32);
   break;
  }
  where = (int)((val32 >> 8) & 0xff);
 }

 return 0;
}
