
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spacc_ablk_ctx {int sw_cipher; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_sync_skcipher (int ) ;
 struct spacc_ablk_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void spacc_ablk_cra_exit(struct crypto_tfm *tfm)
{
 struct spacc_ablk_ctx *ctx = crypto_tfm_ctx(tfm);

 crypto_free_sync_skcipher(ctx->sw_cipher);
}
