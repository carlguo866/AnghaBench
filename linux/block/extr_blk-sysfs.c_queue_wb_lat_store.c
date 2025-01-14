
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_qos {int dummy; } ;
struct request_queue {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int s64 ;


 scalar_t__ EINVAL ;
 int blk_mq_freeze_queue (struct request_queue*) ;
 int blk_mq_quiesce_queue (struct request_queue*) ;
 int blk_mq_unfreeze_queue (struct request_queue*) ;
 int blk_mq_unquiesce_queue (struct request_queue*) ;
 scalar_t__ queue_var_store64 (int*,char const*) ;
 int wbt_default_latency_nsec (struct request_queue*) ;
 int wbt_get_min_lat (struct request_queue*) ;
 scalar_t__ wbt_init (struct request_queue*) ;
 struct rq_qos* wbt_rq_qos (struct request_queue*) ;
 int wbt_set_min_lat (struct request_queue*,int) ;

__attribute__((used)) static ssize_t queue_wb_lat_store(struct request_queue *q, const char *page,
      size_t count)
{
 struct rq_qos *rqos;
 ssize_t ret;
 s64 val;

 ret = queue_var_store64(&val, page);
 if (ret < 0)
  return ret;
 if (val < -1)
  return -EINVAL;

 rqos = wbt_rq_qos(q);
 if (!rqos) {
  ret = wbt_init(q);
  if (ret)
   return ret;
 }

 if (val == -1)
  val = wbt_default_latency_nsec(q);
 else if (val >= 0)
  val *= 1000ULL;

 if (wbt_get_min_lat(q) == val)
  return count;






 blk_mq_freeze_queue(q);
 blk_mq_quiesce_queue(q);

 wbt_set_min_lat(q, val);

 blk_mq_unquiesce_queue(q);
 blk_mq_unfreeze_queue(q);

 return count;
}
