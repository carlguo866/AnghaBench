
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_controller {int dummy; } ;
struct TYPE_3__ {scalar_t__ id; } ;


 scalar_t__ INVALID_CONSUMER_ID ;
 int NVME_MAX_CONSUMERS ;
 TYPE_1__* nvme_consumer ;
 int nvme_notify (TYPE_1__*,struct nvme_controller*) ;

void
nvme_notify_new_controller(struct nvme_controller *ctrlr)
{
 int i;

 for (i = 0; i < NVME_MAX_CONSUMERS; i++) {
  if (nvme_consumer[i].id != INVALID_CONSUMER_ID) {
   nvme_notify(&nvme_consumer[i], ctrlr);
  }
 }
}
