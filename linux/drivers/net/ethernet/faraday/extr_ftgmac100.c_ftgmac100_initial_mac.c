
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct ftgmac100 {TYPE_1__* netdev; int dev; scalar_t__ base; } ;
struct TYPE_2__ {unsigned int* dev_addr; } ;


 int ETH_ALEN ;
 scalar_t__ FTGMAC100_OFFSET_MAC_LADR ;
 scalar_t__ FTGMAC100_OFFSET_MAC_MADR ;
 int dev_info (int ,char*,unsigned int*) ;
 void* device_get_mac_address (int ,unsigned int*,int) ;
 int eth_hw_addr_random (TYPE_1__*) ;
 int ether_addr_copy (unsigned int*,unsigned int*) ;
 unsigned int ioread32 (scalar_t__) ;
 scalar_t__ is_valid_ether_addr (unsigned int*) ;

__attribute__((used)) static void ftgmac100_initial_mac(struct ftgmac100 *priv)
{
 u8 mac[ETH_ALEN];
 unsigned int m;
 unsigned int l;
 void *addr;

 addr = device_get_mac_address(priv->dev, mac, ETH_ALEN);
 if (addr) {
  ether_addr_copy(priv->netdev->dev_addr, mac);
  dev_info(priv->dev, "Read MAC address %pM from device tree\n",
    mac);
  return;
 }

 m = ioread32(priv->base + FTGMAC100_OFFSET_MAC_MADR);
 l = ioread32(priv->base + FTGMAC100_OFFSET_MAC_LADR);

 mac[0] = (m >> 8) & 0xff;
 mac[1] = m & 0xff;
 mac[2] = (l >> 24) & 0xff;
 mac[3] = (l >> 16) & 0xff;
 mac[4] = (l >> 8) & 0xff;
 mac[5] = l & 0xff;

 if (is_valid_ether_addr(mac)) {
  ether_addr_copy(priv->netdev->dev_addr, mac);
  dev_info(priv->dev, "Read MAC address %pM from chip\n", mac);
 } else {
  eth_hw_addr_random(priv->netdev);
  dev_info(priv->dev, "Generated random MAC address %pM\n",
    priv->netdev->dev_addr);
 }
}
