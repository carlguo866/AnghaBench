
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct blk_mq_tag_set {int nr_hw_queues; int nr_maps; unsigned int queue_depth; unsigned int flags; int numa_node; struct blk_mq_ops const* ops; } ;
struct blk_mq_ops {int dummy; } ;


 struct request_queue* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct request_queue*) ;
 int NUMA_NO_NODE ;
 int blk_mq_alloc_tag_set (struct blk_mq_tag_set*) ;
 int blk_mq_free_tag_set (struct blk_mq_tag_set*) ;
 struct request_queue* blk_mq_init_queue (struct blk_mq_tag_set*) ;
 int memset (struct blk_mq_tag_set*,int ,int) ;

struct request_queue *blk_mq_init_sq_queue(struct blk_mq_tag_set *set,
        const struct blk_mq_ops *ops,
        unsigned int queue_depth,
        unsigned int set_flags)
{
 struct request_queue *q;
 int ret;

 memset(set, 0, sizeof(*set));
 set->ops = ops;
 set->nr_hw_queues = 1;
 set->nr_maps = 1;
 set->queue_depth = queue_depth;
 set->numa_node = NUMA_NO_NODE;
 set->flags = set_flags;

 ret = blk_mq_alloc_tag_set(set);
 if (ret)
  return ERR_PTR(ret);

 q = blk_mq_init_queue(set);
 if (IS_ERR(q)) {
  blk_mq_free_tag_set(set);
  return q;
 }

 return q;
}
