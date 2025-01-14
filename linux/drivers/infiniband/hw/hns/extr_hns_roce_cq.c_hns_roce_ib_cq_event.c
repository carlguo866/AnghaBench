
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ib_cq* cq; } ;
struct ib_event {TYPE_1__ element; int event; int device; } ;
struct ib_cq {int cq_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct hns_roce_dev {int dev; } ;
struct hns_roce_cq {int cqn; struct ib_cq ib_cq; } ;
typedef enum hns_roce_event { ____Placeholder_hns_roce_event } hns_roce_event ;


 int HNS_ROCE_EVENT_TYPE_CQ_ACCESS_ERROR ;
 int HNS_ROCE_EVENT_TYPE_CQ_ID_INVALID ;
 int HNS_ROCE_EVENT_TYPE_CQ_OVERFLOW ;
 int IB_EVENT_CQ_ERR ;
 int dev_err (int ,char*,int,int ) ;
 int stub1 (struct ib_event*,int ) ;
 struct hns_roce_dev* to_hr_dev (int ) ;

__attribute__((used)) static void hns_roce_ib_cq_event(struct hns_roce_cq *hr_cq,
     enum hns_roce_event event_type)
{
 struct hns_roce_dev *hr_dev;
 struct ib_event event;
 struct ib_cq *ibcq;

 ibcq = &hr_cq->ib_cq;
 hr_dev = to_hr_dev(ibcq->device);

 if (event_type != HNS_ROCE_EVENT_TYPE_CQ_ID_INVALID &&
     event_type != HNS_ROCE_EVENT_TYPE_CQ_ACCESS_ERROR &&
     event_type != HNS_ROCE_EVENT_TYPE_CQ_OVERFLOW) {
  dev_err(hr_dev->dev,
   "hns_roce_ib: Unexpected event type 0x%x on CQ %06lx\n",
   event_type, hr_cq->cqn);
  return;
 }

 if (ibcq->event_handler) {
  event.device = ibcq->device;
  event.event = IB_EVENT_CQ_ERR;
  event.element.cq = ibcq;
  ibcq->event_handler(&event, ibcq->cq_context);
 }
}
