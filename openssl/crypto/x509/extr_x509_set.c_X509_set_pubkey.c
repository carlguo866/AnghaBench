
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; } ;
struct TYPE_5__ {TYPE_1__ cert_info; } ;
typedef TYPE_2__ X509 ;
typedef int EVP_PKEY ;


 int X509_PUBKEY_set (int *,int *) ;

int X509_set_pubkey(X509 *x, EVP_PKEY *pkey)
{
    if (x == ((void*)0))
        return 0;
    return X509_PUBKEY_set(&(x->cert_info.key), pkey);
}
