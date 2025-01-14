
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t block_size; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_CIPHER ;


 int EVP_CTRL_RET_UNSUPPORTED ;
 int OSSL_CIPHER_PARAM_BLOCK_SIZE ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_size_t (int ,size_t*) ;
 int evp_do_ciph_getparams (TYPE_1__ const*,int *) ;

int EVP_CIPHER_block_size(const EVP_CIPHER *cipher)
{
    int ok;
    size_t v = cipher->block_size;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    params[0] = OSSL_PARAM_construct_size_t(OSSL_CIPHER_PARAM_BLOCK_SIZE, &v);
    ok = evp_do_ciph_getparams(cipher, params);

    return ok != 0 ? (int)v : EVP_CTRL_RET_UNSUPPORTED;
}
