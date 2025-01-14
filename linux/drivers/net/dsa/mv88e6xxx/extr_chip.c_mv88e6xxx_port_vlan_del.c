
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; } ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
struct TYPE_2__ {int max_vid; } ;


 int EOPNOTSUPP ;
 int mv88e6xxx_port_get_pvid (struct mv88e6xxx_chip*,int,scalar_t__*) ;
 int mv88e6xxx_port_set_pvid (struct mv88e6xxx_chip*,int,int ) ;
 int mv88e6xxx_port_vlan_leave (struct mv88e6xxx_chip*,int,scalar_t__) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_port_vlan_del(struct dsa_switch *ds, int port,
       const struct switchdev_obj_port_vlan *vlan)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 u16 pvid, vid;
 int err = 0;

 if (!chip->info->max_vid)
  return -EOPNOTSUPP;

 mv88e6xxx_reg_lock(chip);

 err = mv88e6xxx_port_get_pvid(chip, port, &pvid);
 if (err)
  goto unlock;

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid) {
  err = mv88e6xxx_port_vlan_leave(chip, port, vid);
  if (err)
   goto unlock;

  if (vid == pvid) {
   err = mv88e6xxx_port_set_pvid(chip, port, 0);
   if (err)
    goto unlock;
  }
 }

unlock:
 mv88e6xxx_reg_unlock(chip);

 return err;
}
