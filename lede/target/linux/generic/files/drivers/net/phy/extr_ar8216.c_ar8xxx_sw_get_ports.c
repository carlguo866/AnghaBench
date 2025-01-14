
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct switch_port* ports; } ;
struct switch_val {size_t port_vlan; scalar_t__ len; TYPE_1__ value; } ;
struct switch_port {int id; int flags; } ;
struct switch_dev {int ports; } ;
struct ar8xxx_priv {int* vlan_table; int vlan_tagged; } ;


 size_t AR8X16_MAX_VLANS ;
 int EINVAL ;
 int SWITCH_PORT_FLAG_TAGGED ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

__attribute__((used)) static int
ar8xxx_sw_get_ports(struct switch_dev *dev, struct switch_val *val)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);
 u8 ports;
 int i;

 if (val->port_vlan >= AR8X16_MAX_VLANS)
  return -EINVAL;

 ports = priv->vlan_table[val->port_vlan];
 val->len = 0;
 for (i = 0; i < dev->ports; i++) {
  struct switch_port *p;

  if (!(ports & (1 << i)))
   continue;

  p = &val->value.ports[val->len++];
  p->id = i;
  if (priv->vlan_tagged & (1 << i))
   p->flags = (1 << SWITCH_PORT_FLAG_TAGGED);
  else
   p->flags = 0;
 }
 return 0;
}
