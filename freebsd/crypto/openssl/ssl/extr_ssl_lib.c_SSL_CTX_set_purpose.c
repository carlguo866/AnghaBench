
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int param; } ;
typedef TYPE_1__ SSL_CTX ;


 int X509_VERIFY_PARAM_set_purpose (int ,int) ;

int SSL_CTX_set_purpose(SSL_CTX *s, int purpose)
{
    return X509_VERIFY_PARAM_set_purpose(s->param, purpose);
}
