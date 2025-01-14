
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct crypto_async_request {int dummy; } ;
struct TYPE_4__ {int key_size; } ;
struct TYPE_5__ {TYPE_1__ rsa; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct ccp_rsa_req_ctx {TYPE_3__ cmd; } ;
struct akcipher_request {int dst_len; } ;


 struct akcipher_request* akcipher_request_cast (struct crypto_async_request*) ;
 struct ccp_rsa_req_ctx* akcipher_request_ctx (struct akcipher_request*) ;

__attribute__((used)) static int ccp_rsa_complete(struct crypto_async_request *async_req, int ret)
{
 struct akcipher_request *req = akcipher_request_cast(async_req);
 struct ccp_rsa_req_ctx *rctx = akcipher_request_ctx(req);

 if (ret)
  return ret;

 req->dst_len = rctx->cmd.u.rsa.key_size >> 3;

 return 0;
}
