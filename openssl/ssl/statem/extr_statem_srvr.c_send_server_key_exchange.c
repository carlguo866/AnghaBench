
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* new_cipher; } ;
struct TYPE_9__ {TYPE_2__ tmp; } ;
struct TYPE_11__ {TYPE_4__* cert; TYPE_3__ s3; } ;
struct TYPE_10__ {scalar_t__ psk_identity_hint; } ;
struct TYPE_7__ {unsigned long algorithm_mkey; } ;
typedef TYPE_5__ SSL ;


 unsigned long SSL_PSK ;
 unsigned long SSL_kDHE ;
 unsigned long SSL_kDHEPSK ;
 unsigned long SSL_kECDHE ;
 unsigned long SSL_kECDHEPSK ;
 unsigned long SSL_kPSK ;
 unsigned long SSL_kRSAPSK ;
 unsigned long SSL_kSRP ;

__attribute__((used)) static int send_server_key_exchange(SSL *s)
{
    unsigned long alg_k = s->s3.tmp.new_cipher->algorithm_mkey;
    if (alg_k & (SSL_kDHE | SSL_kECDHE)






        || ((alg_k & (SSL_kPSK | SSL_kRSAPSK))
            && s->cert->psk_identity_hint)

        || (alg_k & (SSL_PSK & (SSL_kDHEPSK | SSL_kECDHEPSK)))



        || (alg_k & SSL_kSRP)

        ) {
        return 1;
    }

    return 0;
}
