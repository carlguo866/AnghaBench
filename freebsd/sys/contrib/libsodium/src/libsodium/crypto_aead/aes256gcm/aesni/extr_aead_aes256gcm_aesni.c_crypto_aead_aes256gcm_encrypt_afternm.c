
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_aead_aes256gcm_state ;


 int ENOSYS ;
 int errno ;

int
crypto_aead_aes256gcm_encrypt_afternm(unsigned char *c, unsigned long long *clen_p,
                                      const unsigned char *m, unsigned long long mlen,
                                      const unsigned char *ad, unsigned long long adlen,
                                      const unsigned char *nsec, const unsigned char *npub,
                                      const crypto_aead_aes256gcm_state *ctx_)
{
    errno = ENOSYS;
    return -1;
}
