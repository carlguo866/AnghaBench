
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ablkcipher {int dummy; } ;
struct aes_ctx {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 int CRYPTO_DIR_DECRYPT ;
 struct aes_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int lq_aes_queue_mgr (struct aes_ctx*,struct ablkcipher_request*,int *,int ,int) ;

__attribute__((used)) static int aes_decrypt (struct ablkcipher_request *areq)
{
    struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
    struct aes_ctx *ctx = crypto_ablkcipher_ctx(cipher);

    return lq_aes_queue_mgr(ctx, areq, ((void*)0), CRYPTO_DIR_DECRYPT, 5);
}
