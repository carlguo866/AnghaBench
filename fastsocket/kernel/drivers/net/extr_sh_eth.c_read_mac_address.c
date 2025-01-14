
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int* dev_addr; scalar_t__ base_addr; } ;


 scalar_t__ MAHR ;
 scalar_t__ MALR ;
 int ctrl_inl (scalar_t__) ;

__attribute__((used)) static void read_mac_address(struct net_device *ndev)
{
 u32 ioaddr = ndev->base_addr;

 ndev->dev_addr[0] = (ctrl_inl(ioaddr + MAHR) >> 24);
 ndev->dev_addr[1] = (ctrl_inl(ioaddr + MAHR) >> 16) & 0xFF;
 ndev->dev_addr[2] = (ctrl_inl(ioaddr + MAHR) >> 8) & 0xFF;
 ndev->dev_addr[3] = (ctrl_inl(ioaddr + MAHR) & 0xFF);
 ndev->dev_addr[4] = (ctrl_inl(ioaddr + MALR) >> 8) & 0xFF;
 ndev->dev_addr[5] = (ctrl_inl(ioaddr + MALR) & 0xFF);
}
