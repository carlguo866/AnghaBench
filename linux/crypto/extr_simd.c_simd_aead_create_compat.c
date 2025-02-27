
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct simd_aead_ctx {int dummy; } ;
struct TYPE_2__ {int cra_flags; int cra_ctxsize; int cra_module; int cra_alignmask; int cra_blocksize; int cra_priority; int cra_driver_name; int cra_name; } ;
struct aead_alg {int decrypt; int encrypt; int setauthsize; int setkey; int exit; int init; int chunksize; int maxauthsize; int ivsize; TYPE_1__ base; } ;
struct simd_aead_alg {char const* ialg_name; struct aead_alg alg; } ;
struct crypto_aead {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_INTERNAL ;
 scalar_t__ CRYPTO_MAX_ALG_NAME ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 struct simd_aead_alg* ERR_CAST (struct crypto_aead*) ;
 struct simd_aead_alg* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_aead*) ;
 struct aead_alg* crypto_aead_alg (struct crypto_aead*) ;
 struct crypto_aead* crypto_alloc_aead (char const*,int,int) ;
 int crypto_free_aead (struct crypto_aead*) ;
 int crypto_register_aead (struct aead_alg*) ;
 int kfree (struct simd_aead_alg*) ;
 struct simd_aead_alg* kzalloc (int,int ) ;
 int simd_aead_decrypt ;
 int simd_aead_encrypt ;
 int simd_aead_exit ;
 int simd_aead_init ;
 int simd_aead_setauthsize ;
 int simd_aead_setkey ;
 scalar_t__ snprintf (int ,scalar_t__,char*,char const*) ;

struct simd_aead_alg *simd_aead_create_compat(const char *algname,
           const char *drvname,
           const char *basename)
{
 struct simd_aead_alg *salg;
 struct crypto_aead *tfm;
 struct aead_alg *ialg;
 struct aead_alg *alg;
 int err;

 tfm = crypto_alloc_aead(basename, CRYPTO_ALG_INTERNAL,
    CRYPTO_ALG_INTERNAL | CRYPTO_ALG_ASYNC);
 if (IS_ERR(tfm))
  return ERR_CAST(tfm);

 ialg = crypto_aead_alg(tfm);

 salg = kzalloc(sizeof(*salg), GFP_KERNEL);
 if (!salg) {
  salg = ERR_PTR(-ENOMEM);
  goto out_put_tfm;
 }

 salg->ialg_name = basename;
 alg = &salg->alg;

 err = -ENAMETOOLONG;
 if (snprintf(alg->base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", algname) >=
     CRYPTO_MAX_ALG_NAME)
  goto out_free_salg;

 if (snprintf(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
       drvname) >= CRYPTO_MAX_ALG_NAME)
  goto out_free_salg;

 alg->base.cra_flags = CRYPTO_ALG_ASYNC;
 alg->base.cra_priority = ialg->base.cra_priority;
 alg->base.cra_blocksize = ialg->base.cra_blocksize;
 alg->base.cra_alignmask = ialg->base.cra_alignmask;
 alg->base.cra_module = ialg->base.cra_module;
 alg->base.cra_ctxsize = sizeof(struct simd_aead_ctx);

 alg->ivsize = ialg->ivsize;
 alg->maxauthsize = ialg->maxauthsize;
 alg->chunksize = ialg->chunksize;

 alg->init = simd_aead_init;
 alg->exit = simd_aead_exit;

 alg->setkey = simd_aead_setkey;
 alg->setauthsize = simd_aead_setauthsize;
 alg->encrypt = simd_aead_encrypt;
 alg->decrypt = simd_aead_decrypt;

 err = crypto_register_aead(alg);
 if (err)
  goto out_free_salg;

out_put_tfm:
 crypto_free_aead(tfm);
 return salg;

out_free_salg:
 kfree(salg);
 salg = ERR_PTR(err);
 goto out_put_tfm;
}
