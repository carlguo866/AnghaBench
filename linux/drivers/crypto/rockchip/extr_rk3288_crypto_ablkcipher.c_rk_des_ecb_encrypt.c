
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int dummy; } ;
struct rk_cipher_ctx {scalar_t__ mode; struct rk_crypto_info* dev; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 struct rk_cipher_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int rk_handle_req (struct rk_crypto_info*,struct ablkcipher_request*) ;

__attribute__((used)) static int rk_des_ecb_encrypt(struct ablkcipher_request *req)
{
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 struct rk_crypto_info *dev = ctx->dev;

 ctx->mode = 0;
 return rk_handle_req(dev, req);
}
