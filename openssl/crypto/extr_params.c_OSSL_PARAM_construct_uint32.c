
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int OSSL_PARAM ;


 int OSSL_PARAM_UNSIGNED_INTEGER ;
 int ossl_param_construct (char const*,int ,int *,int) ;

OSSL_PARAM OSSL_PARAM_construct_uint32(const char *key, uint32_t *buf)
{
    return ossl_param_construct(key, OSSL_PARAM_UNSIGNED_INTEGER, buf,
                                sizeof(uint32_t));
}
