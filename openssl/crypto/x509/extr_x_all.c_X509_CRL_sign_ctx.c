
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int modified; } ;
struct TYPE_7__ {int sig_alg; TYPE_1__ enc; } ;
struct TYPE_6__ {TYPE_4__ crl; int signature; int sig_alg; } ;
typedef TYPE_2__ X509_CRL ;
typedef int EVP_MD_CTX ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_sign_ctx (int ,int *,int *,int *,TYPE_4__*,int *) ;
 int X509_CRL_INFO ;

int X509_CRL_sign_ctx(X509_CRL *x, EVP_MD_CTX *ctx)
{
    x->crl.enc.modified = 1;
    return ASN1_item_sign_ctx(ASN1_ITEM_rptr(X509_CRL_INFO),
                              &x->crl.sig_alg, &x->sig_alg, &x->signature,
                              &x->crl, ctx);
}
