
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * ptr; } ;
struct TYPE_8__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EC_KEY ;


 int ASN1_F_I2D_EC_PUBKEY ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_assign_EC_KEY (TYPE_2__*,int *) ;
 int EVP_PKEY_free (TYPE_2__*) ;
 TYPE_2__* EVP_PKEY_new () ;
 int i2d_PUBKEY (TYPE_2__*,unsigned char**) ;

int i2d_EC_PUBKEY(const EC_KEY *a, unsigned char **pp)
{
    EVP_PKEY *pktmp;
    int ret;

    if (a == ((void*)0))
        return 0;
    if ((pktmp = EVP_PKEY_new()) == ((void*)0)) {
        ASN1err(ASN1_F_I2D_EC_PUBKEY, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    (void)EVP_PKEY_assign_EC_KEY(pktmp, (EC_KEY *)a);
    ret = i2d_PUBKEY(pktmp, pp);
    pktmp->pkey.ptr = ((void*)0);
    EVP_PKEY_free(pktmp);
    return ret;
}
