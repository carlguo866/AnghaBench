
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ucc_geth_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct ucc_geth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static uint32_t
uec_get_msglevel(struct net_device *netdev)
{
 struct ucc_geth_private *ugeth = netdev_priv(netdev);
 return ugeth->msg_enable;
}
