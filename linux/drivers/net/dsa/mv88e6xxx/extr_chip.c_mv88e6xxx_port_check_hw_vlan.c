
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mv88e6xxx_vtu_entry {scalar_t__ vid; int valid; scalar_t__* member; } ;
struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {int dev; TYPE_1__* ports; struct mv88e6xxx_chip* priv; } ;
struct TYPE_4__ {scalar_t__ bridge_dev; } ;
struct TYPE_3__ {scalar_t__ bridge_dev; int slave; } ;


 int EOPNOTSUPP ;
 scalar_t__ MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER ;
 int dev_err (int ,char*,int,scalar_t__,int,int ) ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,int) ;
 scalar_t__ dsa_is_dsa_port (struct dsa_switch*,int) ;
 TYPE_2__* dsa_to_port (struct dsa_switch*,int) ;
 int mv88e6xxx_num_ports (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_vtu_getnext (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;
 int netdev_name (scalar_t__) ;

__attribute__((used)) static int mv88e6xxx_port_check_hw_vlan(struct dsa_switch *ds, int port,
     u16 vid_begin, u16 vid_end)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 struct mv88e6xxx_vtu_entry vlan;
 int i, err;


 if (dsa_is_dsa_port(ds, port) || dsa_is_cpu_port(ds, port))
  return 0;

 if (!vid_begin)
  return -EOPNOTSUPP;

 vlan.vid = vid_begin - 1;
 vlan.valid = 0;

 do {
  err = mv88e6xxx_vtu_getnext(chip, &vlan);
  if (err)
   return err;

  if (!vlan.valid)
   break;

  if (vlan.vid > vid_end)
   break;

  for (i = 0; i < mv88e6xxx_num_ports(chip); ++i) {
   if (dsa_is_dsa_port(ds, i) || dsa_is_cpu_port(ds, i))
    continue;

   if (!ds->ports[i].slave)
    continue;

   if (vlan.member[i] ==
       MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER)
    continue;

   if (dsa_to_port(ds, i)->bridge_dev ==
       ds->ports[port].bridge_dev)
    break;

   if (!dsa_to_port(ds, i)->bridge_dev)
    continue;

   dev_err(ds->dev, "p%d: hw VLAN %d already used by port %d in %s\n",
    port, vlan.vid, i,
    netdev_name(dsa_to_port(ds, i)->bridge_dev));
   return -EOPNOTSUPP;
  }
 } while (vlan.vid < vid_end);

 return 0;
}
