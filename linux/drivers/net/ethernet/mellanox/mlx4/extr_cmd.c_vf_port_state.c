
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;
typedef enum ib_port_state { ____Placeholder_ib_port_state } ib_port_state ;


 int IB_PORT_ACTIVE ;
 int IB_PORT_DOWN ;
 scalar_t__ SLAVE_PORT_UP ;
 scalar_t__ mlx4_get_slave_port_state (struct mlx4_dev*,int,int) ;

__attribute__((used)) static enum ib_port_state vf_port_state(struct mlx4_dev *dev, int port, int vf)
{
 if (mlx4_get_slave_port_state(dev, vf, port) == SLAVE_PORT_UP)
  return IB_PORT_ACTIVE;
 else
  return IB_PORT_DOWN;
}
