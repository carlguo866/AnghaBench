
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct blk_mq_ctx {struct blk_mq_hw_ctx** hctxs; } ;
typedef enum hctx_type { ____Placeholder_hctx_type } hctx_type ;


 int HCTX_TYPE_DEFAULT ;
 int HCTX_TYPE_POLL ;
 int HCTX_TYPE_READ ;
 unsigned int REQ_HIPRI ;
 unsigned int REQ_OP_MASK ;
 unsigned int REQ_OP_READ ;

__attribute__((used)) static inline struct blk_mq_hw_ctx *blk_mq_map_queue(struct request_queue *q,
           unsigned int flags,
           struct blk_mq_ctx *ctx)
{
 enum hctx_type type = HCTX_TYPE_DEFAULT;




 if (flags & REQ_HIPRI)
  type = HCTX_TYPE_POLL;
 else if ((flags & REQ_OP_MASK) == REQ_OP_READ)
  type = HCTX_TYPE_READ;

 return ctx->hctxs[type];
}
