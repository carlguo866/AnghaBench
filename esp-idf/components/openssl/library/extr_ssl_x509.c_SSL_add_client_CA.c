
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* client_CA; } ;
typedef TYPE_1__ X509 ;
typedef TYPE_1__ SSL ;


 int SSL_ASSERT1 (TYPE_1__*) ;
 int X509_free (TYPE_1__*) ;

int SSL_add_client_CA(SSL *ssl, X509 *x)
{
    SSL_ASSERT1(ssl);
    SSL_ASSERT1(x);

    if (ssl->client_CA == x)
        return 1;

    X509_free(ssl->client_CA);

    ssl->client_CA = x;

    return 1;
}
