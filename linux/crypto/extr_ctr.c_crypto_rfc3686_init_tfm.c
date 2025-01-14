
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_instance {int dummy; } ;
struct crypto_skcipher_spawn {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_rfc3686_req_ctx {int dummy; } ;
struct crypto_rfc3686_ctx {struct crypto_skcipher* child; } ;


 scalar_t__ IS_ERR (struct crypto_skcipher*) ;
 int PTR_ERR (struct crypto_skcipher*) ;
 unsigned long crypto_skcipher_alignmask (struct crypto_skcipher*) ;
 struct crypto_rfc3686_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 unsigned long crypto_skcipher_reqsize (struct crypto_skcipher*) ;
 int crypto_skcipher_set_reqsize (struct crypto_skcipher*,unsigned int) ;
 struct crypto_skcipher* crypto_spawn_skcipher (struct crypto_skcipher_spawn*) ;
 int crypto_tfm_ctx_alignment () ;
 struct skcipher_instance* skcipher_alg_instance (struct crypto_skcipher*) ;
 struct crypto_skcipher_spawn* skcipher_instance_ctx (struct skcipher_instance*) ;

__attribute__((used)) static int crypto_rfc3686_init_tfm(struct crypto_skcipher *tfm)
{
 struct skcipher_instance *inst = skcipher_alg_instance(tfm);
 struct crypto_skcipher_spawn *spawn = skcipher_instance_ctx(inst);
 struct crypto_rfc3686_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct crypto_skcipher *cipher;
 unsigned long align;
 unsigned int reqsize;

 cipher = crypto_spawn_skcipher(spawn);
 if (IS_ERR(cipher))
  return PTR_ERR(cipher);

 ctx->child = cipher;

 align = crypto_skcipher_alignmask(tfm);
 align &= ~(crypto_tfm_ctx_alignment() - 1);
 reqsize = align + sizeof(struct crypto_rfc3686_req_ctx) +
    crypto_skcipher_reqsize(cipher);
 crypto_skcipher_set_reqsize(tfm, reqsize);

 return 0;
}
