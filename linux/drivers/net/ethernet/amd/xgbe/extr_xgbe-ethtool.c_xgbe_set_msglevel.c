
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgbe_prv_data {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct xgbe_prv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xgbe_set_msglevel(struct net_device *netdev, u32 msglevel)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);

 pdata->msg_enable = msglevel;
}
