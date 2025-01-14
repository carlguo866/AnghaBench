
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct ksz_port {TYPE_1__* linked; struct ksz_hw* hw; } ;
struct ksz_hw {int dummy; } ;
struct dev_priv {struct ksz_port port; } ;
struct TYPE_2__ {int port_id; } ;


 int hw_r_phy (struct ksz_hw*,int ,int,int*) ;
 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mdio_read(struct net_device *dev, int phy_id, int reg_num)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct ksz_port *port = &priv->port;
 struct ksz_hw *hw = port->hw;
 u16 val_out;

 hw_r_phy(hw, port->linked->port_id, reg_num << 1, &val_out);
 return val_out;
}
