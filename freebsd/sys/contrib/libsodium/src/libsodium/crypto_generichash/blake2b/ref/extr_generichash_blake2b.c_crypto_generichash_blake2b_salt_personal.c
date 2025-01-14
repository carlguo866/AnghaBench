
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 size_t BLAKE2B_KEYBYTES ;
 size_t BLAKE2B_OUTBYTES ;
 unsigned long long UINT64_MAX ;
 size_t UINT8_MAX ;
 int assert (int) ;
 int blake2b_salt_personal (int *,unsigned char const*,unsigned char const*,int ,int ,int ,unsigned char const*,unsigned char const*) ;

int
crypto_generichash_blake2b_salt_personal(
    unsigned char *out, size_t outlen, const unsigned char *in,
    unsigned long long inlen, const unsigned char *key, size_t keylen,
    const unsigned char *salt, const unsigned char *personal)
{
    if (outlen <= 0U || outlen > BLAKE2B_OUTBYTES ||
        keylen > BLAKE2B_KEYBYTES || inlen > UINT64_MAX) {
        return -1;
    }
    assert(outlen <= UINT8_MAX);
    assert(keylen <= UINT8_MAX);

    return blake2b_salt_personal((uint8_t *) out, in, key, (uint8_t) outlen,
                                 (uint64_t) inlen, (uint8_t) keylen, salt,
                                 personal);
}
