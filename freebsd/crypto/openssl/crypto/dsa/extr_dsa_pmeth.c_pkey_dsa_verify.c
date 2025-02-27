
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int * md; } ;
struct TYPE_8__ {TYPE_2__* pkey; TYPE_4__* data; } ;
struct TYPE_6__ {int * dsa; } ;
struct TYPE_7__ {TYPE_1__ pkey; } ;
typedef TYPE_3__ EVP_PKEY_CTX ;
typedef TYPE_4__ DSA_PKEY_CTX ;
typedef int DSA ;


 int DSA_verify (int ,unsigned char const*,size_t,unsigned char const*,size_t,int *) ;
 scalar_t__ EVP_MD_size (int *) ;

__attribute__((used)) static int pkey_dsa_verify(EVP_PKEY_CTX *ctx,
                           const unsigned char *sig, size_t siglen,
                           const unsigned char *tbs, size_t tbslen)
{
    int ret;
    DSA_PKEY_CTX *dctx = ctx->data;
    DSA *dsa = ctx->pkey->pkey.dsa;

    if (dctx->md != ((void*)0) && tbslen != (size_t)EVP_MD_size(dctx->md))
        return 0;

    ret = DSA_verify(0, tbs, tbslen, sig, siglen, dsa);

    return ret;
}
