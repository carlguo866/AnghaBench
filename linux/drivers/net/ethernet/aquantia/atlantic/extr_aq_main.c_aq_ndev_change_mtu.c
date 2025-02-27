
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct aq_nic_s {int dummy; } ;


 scalar_t__ ETH_HLEN ;
 int aq_nic_set_mtu (struct aq_nic_s*,scalar_t__) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aq_ndev_change_mtu(struct net_device *ndev, int new_mtu)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 int err = aq_nic_set_mtu(aq_nic, new_mtu + ETH_HLEN);

 if (err < 0)
  goto err_exit;
 ndev->mtu = new_mtu;

err_exit:
 return err;
}
