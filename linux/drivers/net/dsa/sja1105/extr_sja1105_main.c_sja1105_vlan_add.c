
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; int flags; } ;
struct sja1105_private {int dummy; } ;
struct dsa_switch {int dev; struct sja1105_private* priv; } ;


 int BRIDGE_VLAN_INFO_PVID ;
 int BRIDGE_VLAN_INFO_UNTAGGED ;
 int dev_err (int ,char*,scalar_t__,int,int) ;
 int sja1105_pvid_apply (struct sja1105_private*,int,scalar_t__) ;
 int sja1105_vlan_apply (struct sja1105_private*,int,scalar_t__,int,int) ;

__attribute__((used)) static void sja1105_vlan_add(struct dsa_switch *ds, int port,
        const struct switchdev_obj_port_vlan *vlan)
{
 struct sja1105_private *priv = ds->priv;
 u16 vid;
 int rc;

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; vid++) {
  rc = sja1105_vlan_apply(priv, port, vid, 1, vlan->flags &
     BRIDGE_VLAN_INFO_UNTAGGED);
  if (rc < 0) {
   dev_err(ds->dev, "Failed to add VLAN %d to port %d: %d\n",
    vid, port, rc);
   return;
  }
  if (vlan->flags & BRIDGE_VLAN_INFO_PVID) {
   rc = sja1105_pvid_apply(ds->priv, port, vid);
   if (rc < 0) {
    dev_err(ds->dev, "Failed to set pvid %d on port %d: %d\n",
     vid, port, rc);
    return;
   }
  }
 }
}
