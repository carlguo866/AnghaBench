
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {int nreply_queues; TYPE_1__* pdev; } ;
struct CommandList {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DEFAULT_REPLY_QUEUE ;
 struct CommandList* cmd_alloc (struct ctlr_info*) ;
 int cmd_free (struct ctlr_info*,struct CommandList*) ;
 int dev_warn (int *,char*) ;
 int hpsa_wait_for_test_unit_ready (struct ctlr_info*,struct CommandList*,unsigned char*,int) ;

__attribute__((used)) static int wait_for_device_to_become_ready(struct ctlr_info *h,
        unsigned char lunaddr[],
        int reply_queue)
{
 int first_queue;
 int last_queue;
 int rq;
 int rc = 0;
 struct CommandList *c;

 c = cmd_alloc(h);






 if (reply_queue == DEFAULT_REPLY_QUEUE) {
  first_queue = 0;
  last_queue = h->nreply_queues - 1;
 } else {
  first_queue = reply_queue;
  last_queue = reply_queue;
 }

 for (rq = first_queue; rq <= last_queue; rq++) {
  rc = hpsa_wait_for_test_unit_ready(h, c, lunaddr, rq);
  if (rc)
   break;
 }

 if (rc)
  dev_warn(&h->pdev->dev, "giving up on device.\n");
 else
  dev_warn(&h->pdev->dev, "device is ready.\n");

 cmd_free(h, c);
 return rc;
}
