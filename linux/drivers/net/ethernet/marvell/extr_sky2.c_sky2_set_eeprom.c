
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sky2_port {TYPE_1__* hw; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {scalar_t__ magic; int offset; int len; } ;
struct TYPE_2__ {int pdev; } ;


 int EINVAL ;
 int PCI_CAP_ID_VPD ;
 scalar_t__ SKY2_EEPROM_MAGIC ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int pci_find_capability (int ,int ) ;
 int sky2_vpd_write (TYPE_1__*,int,int *,int,int) ;

__attribute__((used)) static int sky2_set_eeprom(struct net_device *dev, struct ethtool_eeprom *eeprom,
      u8 *data)
{
 struct sky2_port *sky2 = netdev_priv(dev);
 int cap = pci_find_capability(sky2->hw->pdev, PCI_CAP_ID_VPD);

 if (!cap)
  return -EINVAL;

 if (eeprom->magic != SKY2_EEPROM_MAGIC)
  return -EINVAL;


 if ((eeprom->offset & 3) || (eeprom->len & 3))
  return -EINVAL;

 return sky2_vpd_write(sky2->hw, cap, data, eeprom->offset, eeprom->len);
}
