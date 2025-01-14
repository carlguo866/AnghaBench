
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int link_subtype; } ;
struct coresight_device {int enable; int * refcnt; TYPE_2__* pdata; TYPE_1__ subtype; } ;
struct TYPE_6__ {int (* disable ) (struct coresight_device*,int,int) ;} ;
struct TYPE_5__ {int nr_inport; int nr_outport; } ;


 int CORESIGHT_DEV_SUBTYPE_LINK_MERG ;
 int CORESIGHT_DEV_SUBTYPE_LINK_SPLIT ;
 scalar_t__ atomic_dec_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int coresight_find_link_inport (struct coresight_device*,struct coresight_device*) ;
 int coresight_find_link_outport (struct coresight_device*,struct coresight_device*) ;
 TYPE_3__* link_ops (struct coresight_device*) ;
 int stub1 (struct coresight_device*,int,int) ;

__attribute__((used)) static void coresight_disable_link(struct coresight_device *csdev,
       struct coresight_device *parent,
       struct coresight_device *child)
{
 int i, nr_conns;
 int link_subtype;
 int refport, inport, outport;

 if (!parent || !child)
  return;

 inport = coresight_find_link_inport(csdev, parent);
 outport = coresight_find_link_outport(csdev, child);
 link_subtype = csdev->subtype.link_subtype;

 if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_MERG) {
  refport = inport;
  nr_conns = csdev->pdata->nr_inport;
 } else if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT) {
  refport = outport;
  nr_conns = csdev->pdata->nr_outport;
 } else {
  refport = 0;
  nr_conns = 1;
 }

 if (atomic_dec_return(&csdev->refcnt[refport]) == 0) {
  if (link_ops(csdev)->disable)
   link_ops(csdev)->disable(csdev, inport, outport);
 }

 for (i = 0; i < nr_conns; i++)
  if (atomic_read(&csdev->refcnt[i]) != 0)
   return;

 csdev->enable = 0;
}
