
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int* vlan_id; size_t* pvid; int vlan_tagged; scalar_t__ vlan; } ;


 int AR8216_IN_PORT_ONLY ;
 int AR8216_IN_SECURE ;
 int AR8216_OUT_ADD_VLAN ;
 int AR8216_OUT_KEEP ;
 int AR8216_OUT_STRIP_VLAN ;
 int AR8216_PORT_CPU ;
 int AR8216_PORT_CTRL_HEADER ;
 int AR8216_PORT_CTRL_LEARN ;
 int AR8216_PORT_CTRL_LEARN_LOCK ;
 int AR8216_PORT_CTRL_SINGLE_VLAN ;
 int AR8216_PORT_CTRL_STATE ;
 int AR8216_PORT_CTRL_STATE_S ;
 int AR8216_PORT_CTRL_VLAN_MODE ;
 int AR8216_PORT_CTRL_VLAN_MODE_S ;
 int AR8216_PORT_STATE_FORWARD ;
 int AR8216_PORT_VLAN_DEFAULT_ID ;
 int AR8216_PORT_VLAN_DEFAULT_ID_S ;
 int AR8216_PORT_VLAN_DEST_PORTS ;
 int AR8216_PORT_VLAN_DEST_PORTS_S ;
 int AR8216_PORT_VLAN_MODE ;
 int AR8216_PORT_VLAN_MODE_S ;
 int AR8216_REG_PORT_CTRL (int) ;
 int AR8216_REG_PORT_VLAN (int) ;
 int ar8xxx_rmw (struct ar8xxx_priv*,int ,int,int) ;
 scalar_t__ chip_is_ar8216 (struct ar8xxx_priv*) ;

__attribute__((used)) static void
ar8216_setup_port(struct ar8xxx_priv *priv, int port, u32 members)
{
 u32 header;
 u32 egress, ingress;
 u32 pvid;

 if (priv->vlan) {
  pvid = priv->vlan_id[priv->pvid[port]];
  if (priv->vlan_tagged & (1 << port))
   egress = AR8216_OUT_ADD_VLAN;
  else
   egress = AR8216_OUT_STRIP_VLAN;
  ingress = AR8216_IN_SECURE;
 } else {
  pvid = port;
  egress = AR8216_OUT_KEEP;
  ingress = AR8216_IN_PORT_ONLY;
 }

 if (chip_is_ar8216(priv) && priv->vlan && port == AR8216_PORT_CPU)
  header = AR8216_PORT_CTRL_HEADER;
 else
  header = 0;

 ar8xxx_rmw(priv, AR8216_REG_PORT_CTRL(port),
     AR8216_PORT_CTRL_LEARN | AR8216_PORT_CTRL_VLAN_MODE |
     AR8216_PORT_CTRL_SINGLE_VLAN | AR8216_PORT_CTRL_STATE |
     AR8216_PORT_CTRL_HEADER | AR8216_PORT_CTRL_LEARN_LOCK,
     AR8216_PORT_CTRL_LEARN | header |
     (egress << AR8216_PORT_CTRL_VLAN_MODE_S) |
     (AR8216_PORT_STATE_FORWARD << AR8216_PORT_CTRL_STATE_S));

 ar8xxx_rmw(priv, AR8216_REG_PORT_VLAN(port),
     AR8216_PORT_VLAN_DEST_PORTS | AR8216_PORT_VLAN_MODE |
     AR8216_PORT_VLAN_DEFAULT_ID,
     (members << AR8216_PORT_VLAN_DEST_PORTS_S) |
     (ingress << AR8216_PORT_VLAN_MODE_S) |
     (pvid << AR8216_PORT_VLAN_DEFAULT_ID_S));
}
