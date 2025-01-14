
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; scalar_t__ disabled; } ;
struct TYPE_5__ {int* a_frag_threshold; } ;
struct TYPE_6__ {TYPE_1__ b5; } ;
struct TYPE_7__ {scalar_t__ card_status; TYPE_2__ sparm; } ;
typedef TYPE_3__ ray_dev_t ;


 scalar_t__ CARD_AWAITING_PARAM ;
 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 TYPE_3__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ray_set_frag(struct net_device *dev,
   struct iw_request_info *info,
   struct iw_param *vwrq, char *extra)
{
 ray_dev_t *local = netdev_priv(dev);
 int fthr = vwrq->value;


 if (local->card_status != CARD_AWAITING_PARAM)
  return -EBUSY;


 if (vwrq->disabled)
  fthr = 32767;
 else {
  if ((fthr < 256) || (fthr > 2347))
   return -EINVAL;
 }
 local->sparm.b5.a_frag_threshold[0] = (fthr >> 8) & 0xFF;
 local->sparm.b5.a_frag_threshold[1] = fthr & 0xFF;

 return -EINPROGRESS;
}
