
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* ue; } ;
typedef TYPE_1__ pdf_crypt ;
typedef int fz_context ;



unsigned char *
pdf_crypt_user_encryption(fz_context *ctx, pdf_crypt *crypt)
{
 if (crypt)
  return crypt->ue;
 return ((void*)0);
}
