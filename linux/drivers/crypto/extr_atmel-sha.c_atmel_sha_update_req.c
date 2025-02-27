
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {int total; int flags; int * digcnt; } ;
struct atmel_sha_dev {int dev; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;


 int SHA_FLAGS_CPU ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_update_cpu (struct atmel_sha_dev*) ;
 int atmel_sha_update_dma_start (struct atmel_sha_dev*) ;
 int dev_dbg (int ,char*,int,int ,int ) ;

__attribute__((used)) static int atmel_sha_update_req(struct atmel_sha_dev *dd)
{
 struct ahash_request *req = dd->req;
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 int err;

 dev_dbg(dd->dev, "update_req: total: %u, digcnt: 0x%llx 0x%llx\n",
  ctx->total, ctx->digcnt[1], ctx->digcnt[0]);

 if (ctx->flags & SHA_FLAGS_CPU)
  err = atmel_sha_update_cpu(dd);
 else
  err = atmel_sha_update_dma_start(dd);


 dev_dbg(dd->dev, "update: err: %d, digcnt: 0x%llx 0%llx\n",
   err, ctx->digcnt[1], ctx->digcnt[0]);

 return err;
}
