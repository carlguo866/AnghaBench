
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int kdf_outlen; int kdf_ukmlen; int * kdf_ukm; int kdf_md; int * kdf_oid; int kdf_type; int param_nid; int rfc5114_param; int md; int pad; int use_dsa; int generator; int subprime_len; int prime_len; } ;
struct TYPE_6__ {TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef TYPE_2__ DH_PKEY_CTX ;


 int * OBJ_dup (int *) ;
 int * OPENSSL_memdup (int *,int ) ;
 int pkey_dh_init (TYPE_1__*) ;

__attribute__((used)) static int pkey_dh_copy(EVP_PKEY_CTX *dst, const EVP_PKEY_CTX *src)
{
    DH_PKEY_CTX *dctx, *sctx;

    if (!pkey_dh_init(dst))
        return 0;
    sctx = src->data;
    dctx = dst->data;
    dctx->prime_len = sctx->prime_len;
    dctx->subprime_len = sctx->subprime_len;
    dctx->generator = sctx->generator;
    dctx->use_dsa = sctx->use_dsa;
    dctx->pad = sctx->pad;
    dctx->md = sctx->md;
    dctx->rfc5114_param = sctx->rfc5114_param;
    dctx->param_nid = sctx->param_nid;

    dctx->kdf_type = sctx->kdf_type;
    dctx->kdf_oid = OBJ_dup(sctx->kdf_oid);
    if (dctx->kdf_oid == ((void*)0))
        return 0;
    dctx->kdf_md = sctx->kdf_md;
    if (sctx->kdf_ukm != ((void*)0)) {
        dctx->kdf_ukm = OPENSSL_memdup(sctx->kdf_ukm, sctx->kdf_ukmlen);
        if (dctx->kdf_ukm == ((void*)0))
          return 0;
        dctx->kdf_ukmlen = sctx->kdf_ukmlen;
    }
    dctx->kdf_outlen = sctx->kdf_outlen;
    return 1;
}
