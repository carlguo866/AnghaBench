
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct switchdev_notifier_port_attr_info {int info; struct switchdev_attr* attr; } ;
struct TYPE_4__ {unsigned long brport_flags; } ;
struct switchdev_attr {TYPE_1__ u; int flags; int id; TYPE_2__* orig_dev; } ;
struct net_bridge_port {TYPE_2__* dev; scalar_t__ port_no; int br; } ;
struct TYPE_5__ {int name; } ;


 unsigned long BR_PORT_FLAGS_HW_OFFLOAD ;
 int EOPNOTSUPP ;
 int SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS ;
 int SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS ;
 int SWITCHDEV_F_DEFER ;
 int SWITCHDEV_PORT_ATTR_SET ;
 int br_warn (int ,char*,unsigned int,int ) ;
 int call_switchdev_notifiers (int ,TYPE_2__*,int *,int *) ;
 int notifier_to_errno (int) ;
 int switchdev_port_attr_set (TYPE_2__*,struct switchdev_attr*) ;

int br_switchdev_set_port_flag(struct net_bridge_port *p,
          unsigned long flags,
          unsigned long mask)
{
 struct switchdev_attr attr = {
  .orig_dev = p->dev,
  .id = SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS,
  .u.brport_flags = mask,
 };
 struct switchdev_notifier_port_attr_info info = {
  .attr = &attr,
 };
 int err;

 if (mask & ~BR_PORT_FLAGS_HW_OFFLOAD)
  return 0;


 err = call_switchdev_notifiers(SWITCHDEV_PORT_ATTR_SET, p->dev,
           &info.info, ((void*)0));
 err = notifier_to_errno(err);
 if (err == -EOPNOTSUPP)
  return 0;

 if (err) {
  br_warn(p->br, "bridge flag offload is not supported %u(%s)\n",
   (unsigned int)p->port_no, p->dev->name);
  return -EOPNOTSUPP;
 }

 attr.id = SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS;
 attr.flags = SWITCHDEV_F_DEFER;
 attr.u.brport_flags = flags;

 err = switchdev_port_attr_set(p->dev, &attr);
 if (err) {
  br_warn(p->br, "error setting offload flag on port %u(%s)\n",
   (unsigned int)p->port_no, p->dev->name);
  return err;
 }

 return 0;
}
