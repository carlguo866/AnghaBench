
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attributes; } ;
typedef TYPE_1__ EVP_PKEY ;


 scalar_t__ X509at_add1_attr_by_NID (int *,int,int,unsigned char const*,int) ;

int EVP_PKEY_add1_attr_by_NID(EVP_PKEY *key,
                              int nid, int type,
                              const unsigned char *bytes, int len)
{
    if (X509at_add1_attr_by_NID(&key->attributes, nid, type, bytes, len))
        return 1;
    return 0;
}
