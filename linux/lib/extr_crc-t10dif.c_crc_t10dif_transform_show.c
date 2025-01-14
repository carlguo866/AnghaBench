
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int crct10dif_fallback ;
 int crct10dif_tfm ;
 int crypto_shash_tfm (int ) ;
 char* crypto_tfm_alg_driver_name (int ) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ static_key_false (int *) ;

__attribute__((used)) static int crc_t10dif_transform_show(char *buffer, const struct kernel_param *kp)
{
 if (static_key_false(&crct10dif_fallback))
  return sprintf(buffer, "fallback\n");

 return sprintf(buffer, "%s\n",
  crypto_tfm_alg_driver_name(crypto_shash_tfm(crct10dif_tfm)));
}
