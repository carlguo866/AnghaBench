
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_request_ctx {int flags; scalar_t__ total; scalar_t__ bufcnt; scalar_t__ buflen; scalar_t__ offset; int sg; } ;
struct ahash_request {scalar_t__ nbytes; int src; } ;


 int HASH_FLAGS_CPU ;
 int HASH_OP_UPDATE ;
 struct stm32_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 int stm32_hash_append_sg (struct stm32_hash_request_ctx*) ;
 int stm32_hash_enqueue (struct ahash_request*,int ) ;

__attribute__((used)) static int stm32_hash_update(struct ahash_request *req)
{
 struct stm32_hash_request_ctx *rctx = ahash_request_ctx(req);

 if (!req->nbytes || !(rctx->flags & HASH_FLAGS_CPU))
  return 0;

 rctx->total = req->nbytes;
 rctx->sg = req->src;
 rctx->offset = 0;

 if ((rctx->bufcnt + rctx->total < rctx->buflen)) {
  stm32_hash_append_sg(rctx);
  return 0;
 }

 return stm32_hash_enqueue(req, HASH_OP_UPDATE);
}
