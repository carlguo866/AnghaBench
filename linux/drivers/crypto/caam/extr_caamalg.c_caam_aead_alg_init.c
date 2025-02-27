
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct caam_ctx {int dummy; } ;
struct TYPE_2__ {int cra_ctxsize; int cra_flags; int cra_priority; int cra_module; } ;
struct aead_alg {int exit; int init; TYPE_1__ base; } ;
struct caam_aead_alg {struct aead_alg aead; } ;


 int CAAM_CRA_PRIORITY ;
 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_KERN_DRIVER_ONLY ;
 int THIS_MODULE ;
 int caam_aead_exit ;
 int caam_aead_init ;

__attribute__((used)) static void caam_aead_alg_init(struct caam_aead_alg *t_alg)
{
 struct aead_alg *alg = &t_alg->aead;

 alg->base.cra_module = THIS_MODULE;
 alg->base.cra_priority = CAAM_CRA_PRIORITY;
 alg->base.cra_ctxsize = sizeof(struct caam_ctx);
 alg->base.cra_flags = CRYPTO_ALG_ASYNC | CRYPTO_ALG_KERN_DRIVER_ONLY;

 alg->init = caam_aead_init;
 alg->exit = caam_aead_exit;
}
