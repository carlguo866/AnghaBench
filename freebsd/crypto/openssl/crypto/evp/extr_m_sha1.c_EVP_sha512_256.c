
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int const sha512_256_md ;

const EVP_MD *EVP_sha512_256(void)
{
    return &sha512_256_md;
}
