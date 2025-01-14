
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct s390_xts_ctx {TYPE_2__* fallback; } ;
struct crypto_tfm {int crt_flags; } ;
struct TYPE_3__ {int crt_flags; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 unsigned int crypto_blkcipher_setkey (TYPE_2__*,int const*,unsigned int) ;
 struct s390_xts_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int xts_fallback_setkey(struct crypto_tfm *tfm, const u8 *key,
       unsigned int len)
{
 struct s390_xts_ctx *xts_ctx = crypto_tfm_ctx(tfm);
 unsigned int ret;

 xts_ctx->fallback->base.crt_flags &= ~CRYPTO_TFM_REQ_MASK;
 xts_ctx->fallback->base.crt_flags |= (tfm->crt_flags &
   CRYPTO_TFM_REQ_MASK);

 ret = crypto_blkcipher_setkey(xts_ctx->fallback, key, len);
 if (ret) {
  tfm->crt_flags &= ~CRYPTO_TFM_RES_MASK;
  tfm->crt_flags |= (xts_ctx->fallback->base.crt_flags &
    CRYPTO_TFM_RES_MASK);
 }
 return ret;
}
