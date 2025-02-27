
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int nonce ;
typedef int hash_ctx ;
typedef int ge_p3 ;
typedef int az ;
typedef int SHA512_CTX ;


 int OPENSSL_cleanse (int*,int) ;
 int SHA512_DIGEST_LENGTH ;
 int SHA512_Final (int*,int*) ;
 int SHA512_Init (int*) ;
 int SHA512_Update (int*,int const*,size_t) ;
 int ge_p3_tobytes (int*,int *) ;
 int ge_scalarmult_base (int *,int*) ;
 int sc_muladd (int*,int*,int*,int*) ;
 int x25519_sc_reduce (int*) ;

int ED25519_sign(uint8_t *out_sig, const uint8_t *message, size_t message_len,
                 const uint8_t public_key[32], const uint8_t private_key[32])
{
    uint8_t az[SHA512_DIGEST_LENGTH];
    uint8_t nonce[SHA512_DIGEST_LENGTH];
    ge_p3 R;
    uint8_t hram[SHA512_DIGEST_LENGTH];
    SHA512_CTX hash_ctx;

    SHA512_Init(&hash_ctx);
    SHA512_Update(&hash_ctx, private_key, 32);
    SHA512_Final(az, &hash_ctx);

    az[0] &= 248;
    az[31] &= 63;
    az[31] |= 64;

    SHA512_Init(&hash_ctx);
    SHA512_Update(&hash_ctx, az + 32, 32);
    SHA512_Update(&hash_ctx, message, message_len);
    SHA512_Final(nonce, &hash_ctx);

    x25519_sc_reduce(nonce);
    ge_scalarmult_base(&R, nonce);
    ge_p3_tobytes(out_sig, &R);

    SHA512_Init(&hash_ctx);
    SHA512_Update(&hash_ctx, out_sig, 32);
    SHA512_Update(&hash_ctx, public_key, 32);
    SHA512_Update(&hash_ctx, message, message_len);
    SHA512_Final(hram, &hash_ctx);

    x25519_sc_reduce(hram);
    sc_muladd(out_sig + 32, hram, az, nonce);

    OPENSSL_cleanse(&hash_ctx, sizeof(hash_ctx));
    OPENSSL_cleanse(nonce, sizeof(nonce));
    OPENSSL_cleanse(az, sizeof(az));

    return 1;
}
