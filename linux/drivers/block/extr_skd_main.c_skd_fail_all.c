
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_device {int state; } ;
struct request_queue {struct skd_device* queuedata; } ;


 int SKD_ASSERT (int) ;






 int SKD_DRVR_STATE_ONLINE ;







 int skd_log_skdev (struct skd_device*,char*) ;

__attribute__((used)) static bool skd_fail_all(struct request_queue *q)
{
 struct skd_device *skdev = q->queuedata;

 SKD_ASSERT(skdev->state != SKD_DRVR_STATE_ONLINE);

 skd_log_skdev(skdev, "req_not_online");
 switch (skdev->state) {
 case 133:
 case 134:
 case 131:
 case 132:
 case 128:







 case 140:
 case 138:
 case 139:
  return 0;

 case 137:
 case 130:
 case 129:
 case 135:
 case 136:
 default:
  return 1;
 }
}
