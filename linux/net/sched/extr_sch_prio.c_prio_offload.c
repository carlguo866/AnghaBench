
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * qstats; int priomap; int bands; } ;
struct tc_prio_qopt_offload {int command; TYPE_1__ replace_params; int parent; int handle; } ;
struct tc_prio_qopt {int priomap; int bands; } ;
struct net_device {TYPE_2__* netdev_ops; } ;
struct Qdisc {int qstats; int parent; int handle; } ;
struct TYPE_4__ {int (* ndo_setup_tc ) (struct net_device*,int ,struct tc_prio_qopt_offload*) ;} ;


 int EOPNOTSUPP ;
 int TC_PRIO_DESTROY ;
 scalar_t__ TC_PRIO_MAX ;
 int TC_PRIO_REPLACE ;
 int TC_SETUP_QDISC_PRIO ;
 int memcpy (int *,int ,scalar_t__) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int stub1 (struct net_device*,int ,struct tc_prio_qopt_offload*) ;
 int tc_can_offload (struct net_device*) ;

__attribute__((used)) static int prio_offload(struct Qdisc *sch, struct tc_prio_qopt *qopt)
{
 struct net_device *dev = qdisc_dev(sch);
 struct tc_prio_qopt_offload opt = {
  .handle = sch->handle,
  .parent = sch->parent,
 };

 if (!tc_can_offload(dev) || !dev->netdev_ops->ndo_setup_tc)
  return -EOPNOTSUPP;

 if (qopt) {
  opt.command = TC_PRIO_REPLACE;
  opt.replace_params.bands = qopt->bands;
  memcpy(&opt.replace_params.priomap, qopt->priomap,
         TC_PRIO_MAX + 1);
  opt.replace_params.qstats = &sch->qstats;
 } else {
  opt.command = TC_PRIO_DESTROY;
 }

 return dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_QDISC_PRIO, &opt);
}
