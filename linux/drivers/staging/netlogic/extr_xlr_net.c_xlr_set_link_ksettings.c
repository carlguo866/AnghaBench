
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_net_priv {int dummy; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int ENODEV ;
 struct xlr_net_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_ksettings_set (struct phy_device*,struct ethtool_link_ksettings const*) ;
 struct phy_device* xlr_get_phydev (struct xlr_net_priv*) ;

__attribute__((used)) static int xlr_set_link_ksettings(struct net_device *ndev,
      const struct ethtool_link_ksettings *ecmd)
{
 struct xlr_net_priv *priv = netdev_priv(ndev);
 struct phy_device *phydev = xlr_get_phydev(priv);

 if (!phydev)
  return -ENODEV;
 return phy_ethtool_ksettings_set(phydev, ecmd);
}
