
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;


 int _crypto_scalarmult_ed25519_clamp (unsigned char*) ;
 int ge25519_p3_tobytes (unsigned char*,int *) ;
 int ge25519_scalarmult_base (int *,unsigned char*) ;
 scalar_t__ sodium_is_zero (unsigned char const*,int) ;

int
crypto_scalarmult_ed25519_base(unsigned char *q,
                               const unsigned char *n)
{
    unsigned char *t = q;
    ge25519_p3 Q;
    unsigned int i;

    for (i = 0; i < 32; ++i) {
        t[i] = n[i];
    }
    _crypto_scalarmult_ed25519_clamp(t);
    ge25519_scalarmult_base(&Q, t);
    ge25519_p3_tobytes(q, &Q);
    if (sodium_is_zero(n, 32) != 0) {
        return -1;
    }
    return 0;
}
