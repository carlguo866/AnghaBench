
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2 {scalar_t__ flash_size; int flash_info; } ;


 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
bnx2_get_eeprom_len(struct net_device *dev)
{
 struct bnx2 *bp = netdev_priv(dev);

 if (!bp->flash_info)
  return 0;

 return (int) bp->flash_size;
}
