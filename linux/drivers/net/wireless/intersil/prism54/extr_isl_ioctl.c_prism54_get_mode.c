
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ iw_mode; } ;
typedef TYPE_1__ islpci_private ;
typedef scalar_t__ __u32 ;


 int BUG_ON (int) ;
 scalar_t__ IW_MODE_AUTO ;
 scalar_t__ IW_MODE_MONITOR ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_get_mode(struct net_device *ndev, struct iw_request_info *info,
   __u32 * uwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);

 BUG_ON((priv->iw_mode < IW_MODE_AUTO) || (priv->iw_mode >
        IW_MODE_MONITOR));
 *uwrq = priv->iw_mode;

 return 0;
}
