
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_STORE_CTX_lookup_certs_fn ;
struct TYPE_3__ {int lookup_certs; } ;
typedef TYPE_1__ X509_STORE_CTX ;



X509_STORE_CTX_lookup_certs_fn X509_STORE_CTX_get_lookup_certs(X509_STORE_CTX *ctx)
{
    return ctx->lookup_certs;
}
