
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int portnum; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int QLCNIC_WOL_CONFIG ;
 int QLCNIC_WOL_CONFIG_NV ;
 int QLCRD32 (struct qlcnic_adapter*,int ) ;
 int QLCWR32 (struct qlcnic_adapter*,int ,int) ;
 int WAKE_MAGIC ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static int
qlcnic_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);
 u32 wol_cfg;

 if (qlcnic_83xx_check(adapter))
  return -EOPNOTSUPP;
 if (wol->wolopts & ~WAKE_MAGIC)
  return -EINVAL;

 wol_cfg = QLCRD32(adapter, QLCNIC_WOL_CONFIG_NV);
 if (!(wol_cfg & (1 << adapter->portnum)))
  return -EOPNOTSUPP;

 wol_cfg = QLCRD32(adapter, QLCNIC_WOL_CONFIG);
 if (wol->wolopts & WAKE_MAGIC)
  wol_cfg |= 1UL << adapter->portnum;
 else
  wol_cfg &= ~(1UL << adapter->portnum);

 QLCWR32(adapter, QLCNIC_WOL_CONFIG, wol_cfg);

 return 0;
}
