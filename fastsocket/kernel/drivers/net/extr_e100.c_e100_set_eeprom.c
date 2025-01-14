
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nic {scalar_t__ eeprom; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {scalar_t__ magic; size_t offset; int len; } ;


 scalar_t__ E100_EEPROM_MAGIC ;
 int EINVAL ;
 int e100_eeprom_save (struct nic*,int,int) ;
 int memcpy (int *,int *,int) ;
 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e100_set_eeprom(struct net_device *netdev,
 struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct nic *nic = netdev_priv(netdev);

 if (eeprom->magic != E100_EEPROM_MAGIC)
  return -EINVAL;

 memcpy(&((u8 *)nic->eeprom)[eeprom->offset], bytes, eeprom->len);

 return e100_eeprom_save(nic, eeprom->offset >> 1,
  (eeprom->len >> 1) + 1);
}
