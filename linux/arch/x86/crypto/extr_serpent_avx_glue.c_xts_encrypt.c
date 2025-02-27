
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct serpent_xts_ctx {int crypt_ctx; int tweak_ctx; } ;
struct crypto_skcipher {int dummy; } ;


 int XTS_TWEAK_CAST (int ) ;
 int __serpent_encrypt ;
 struct serpent_xts_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int glue_xts_req_128bit (int *,struct skcipher_request*,int ,int *,int *,int) ;
 int serpent_enc_xts ;

__attribute__((used)) static int xts_encrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct serpent_xts_ctx *ctx = crypto_skcipher_ctx(tfm);

 return glue_xts_req_128bit(&serpent_enc_xts, req,
       XTS_TWEAK_CAST(__serpent_encrypt),
       &ctx->tweak_ctx, &ctx->crypt_ctx, 0);
}
