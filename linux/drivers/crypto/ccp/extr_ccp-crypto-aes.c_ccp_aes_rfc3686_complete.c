
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int dummy; } ;
struct ccp_aes_req_ctx {int rfc3686_info; } ;
struct ablkcipher_request {int info; } ;


 struct ablkcipher_request* ablkcipher_request_cast (struct crypto_async_request*) ;
 struct ccp_aes_req_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int ccp_aes_complete (struct crypto_async_request*,int) ;

__attribute__((used)) static int ccp_aes_rfc3686_complete(struct crypto_async_request *async_req,
        int ret)
{
 struct ablkcipher_request *req = ablkcipher_request_cast(async_req);
 struct ccp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);


 req->info = rctx->rfc3686_info;

 return ccp_aes_complete(async_req, ret);
}
