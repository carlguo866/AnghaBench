
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_gid_attr {struct net_device* ndev; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int sgid_index; } ;
struct TYPE_5__ {int ppath_sgid_index; } ;
struct TYPE_6__ {TYPE_1__ sidr_req_rcvd; TYPE_2__ req_rcvd; } ;
struct ib_cm_event {scalar_t__ event; TYPE_3__ param; } ;


 int EINVAL ;
 scalar_t__ IB_CM_REQ_RECEIVED ;
 scalar_t__ IB_CM_SIDR_REQ_RECEIVED ;
 int ib_get_cached_gid (struct ib_device*,int ,int ,union ib_gid*,struct ib_gid_attr*) ;

__attribute__((used)) static struct net_device *
roce_get_net_dev_by_cm_event(struct ib_device *device, u8 port_num,
    const struct ib_cm_event *ib_event)
{
 struct ib_gid_attr sgid_attr;
 union ib_gid sgid;
 int err = -EINVAL;

 if (ib_event->event == IB_CM_REQ_RECEIVED) {
  err = ib_get_cached_gid(device, port_num,
      ib_event->param.req_rcvd.ppath_sgid_index, &sgid, &sgid_attr);
 } else if (ib_event->event == IB_CM_SIDR_REQ_RECEIVED) {
  err = ib_get_cached_gid(device, port_num,
      ib_event->param.sidr_req_rcvd.sgid_index, &sgid, &sgid_attr);
 }
 if (err)
  return (((void*)0));
 return (sgid_attr.ndev);
}
