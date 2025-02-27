
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* s3; TYPE_2__* method; } ;
struct TYPE_12__ {long algorithm2; int algorithm_mkey; } ;
struct TYPE_11__ {TYPE_5__* new_cipher; } ;
struct TYPE_10__ {TYPE_4__ tmp; } ;
struct TYPE_9__ {TYPE_1__* ssl3_enc; } ;
struct TYPE_8__ {int enc_flags; } ;
typedef TYPE_6__ SSL ;


 int SSL_ENC_FLAG_SHA256_PRF ;
 long SSL_HANDSHAKE_MAC_DEFAULT ;
 long SSL_HANDSHAKE_MAC_SHA256 ;
 long SSL_HANDSHAKE_MAC_SHA384 ;
 int SSL_PSK ;
 long TLS1_PRF ;
 long TLS1_PRF_SHA256 ;
 long TLS1_PRF_SHA384 ;

long ssl_get_algorithm2(SSL *s)
{
    long alg2;
    if (s->s3 == ((void*)0) || s->s3->tmp.new_cipher == ((void*)0))
        return -1;
    alg2 = s->s3->tmp.new_cipher->algorithm2;
    if (s->method->ssl3_enc->enc_flags & SSL_ENC_FLAG_SHA256_PRF) {
        if (alg2 == (SSL_HANDSHAKE_MAC_DEFAULT | TLS1_PRF))
            return SSL_HANDSHAKE_MAC_SHA256 | TLS1_PRF_SHA256;
    } else if (s->s3->tmp.new_cipher->algorithm_mkey & SSL_PSK) {
        if (alg2 == (SSL_HANDSHAKE_MAC_SHA384 | TLS1_PRF_SHA384))
            return SSL_HANDSHAKE_MAC_DEFAULT | TLS1_PRF;
    }
    return alg2;
}
