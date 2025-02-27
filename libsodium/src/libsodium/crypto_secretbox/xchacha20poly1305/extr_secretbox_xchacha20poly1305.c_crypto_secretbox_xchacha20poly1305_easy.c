
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_secretbox_xchacha20poly1305_MACBYTES ;
 unsigned long long crypto_secretbox_xchacha20poly1305_MESSAGEBYTES_MAX ;
 int crypto_secretbox_xchacha20poly1305_detached (unsigned char*,unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*) ;
 int sodium_misuse () ;

int
crypto_secretbox_xchacha20poly1305_easy(unsigned char *c,
                                        const unsigned char *m,
                                        unsigned long long mlen,
                                        const unsigned char *n,
                                        const unsigned char *k)
{
    if (mlen > crypto_secretbox_xchacha20poly1305_MESSAGEBYTES_MAX) {
        sodium_misuse();
    }
    return crypto_secretbox_xchacha20poly1305_detached
        (c + crypto_secretbox_xchacha20poly1305_MACBYTES, c, m, mlen, n, k);
}
