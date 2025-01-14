
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DES_key_schedule ;
typedef unsigned char* DES_cblock ;
typedef int DES_LONG ;


 int DES_decrypt3 (int *,int *,int *,int *) ;
 int DES_encrypt3 (int *,int *,int *,int *) ;
 int c2l (unsigned char const*,int ) ;
 int c2ln (unsigned char const*,int ,int ,long) ;
 int l2c (int ,unsigned char*) ;
 int l2cn (int ,int ,unsigned char*,long) ;

void DES_ede3_cbc_encrypt(const unsigned char *input, unsigned char *output,
                          long length, DES_key_schedule *ks1,
                          DES_key_schedule *ks2, DES_key_schedule *ks3,
                          DES_cblock *ivec, int enc)
{
    register DES_LONG tin0, tin1;
    register DES_LONG tout0, tout1, xor0, xor1;
    register const unsigned char *in;
    unsigned char *out;
    register long l = length;
    DES_LONG tin[2];
    unsigned char *iv;

    in = input;
    out = output;
    iv = &(*ivec)[0];

    if (enc) {
        c2l(iv, tout0);
        c2l(iv, tout1);
        for (l -= 8; l >= 0; l -= 8) {
            c2l(in, tin0);
            c2l(in, tin1);
            tin0 ^= tout0;
            tin1 ^= tout1;

            tin[0] = tin0;
            tin[1] = tin1;
            DES_encrypt3((DES_LONG *)tin, ks1, ks2, ks3);
            tout0 = tin[0];
            tout1 = tin[1];

            l2c(tout0, out);
            l2c(tout1, out);
        }
        if (l != -8) {
            c2ln(in, tin0, tin1, l + 8);
            tin0 ^= tout0;
            tin1 ^= tout1;

            tin[0] = tin0;
            tin[1] = tin1;
            DES_encrypt3((DES_LONG *)tin, ks1, ks2, ks3);
            tout0 = tin[0];
            tout1 = tin[1];

            l2c(tout0, out);
            l2c(tout1, out);
        }
        iv = &(*ivec)[0];
        l2c(tout0, iv);
        l2c(tout1, iv);
    } else {
        register DES_LONG t0, t1;

        c2l(iv, xor0);
        c2l(iv, xor1);
        for (l -= 8; l >= 0; l -= 8) {
            c2l(in, tin0);
            c2l(in, tin1);

            t0 = tin0;
            t1 = tin1;

            tin[0] = tin0;
            tin[1] = tin1;
            DES_decrypt3((DES_LONG *)tin, ks1, ks2, ks3);
            tout0 = tin[0];
            tout1 = tin[1];

            tout0 ^= xor0;
            tout1 ^= xor1;
            l2c(tout0, out);
            l2c(tout1, out);
            xor0 = t0;
            xor1 = t1;
        }
        if (l != -8) {
            c2l(in, tin0);
            c2l(in, tin1);

            t0 = tin0;
            t1 = tin1;

            tin[0] = tin0;
            tin[1] = tin1;
            DES_decrypt3((DES_LONG *)tin, ks1, ks2, ks3);
            tout0 = tin[0];
            tout1 = tin[1];

            tout0 ^= xor0;
            tout1 ^= xor1;
            l2cn(tout0, tout1, out, l + 8);
            xor0 = t0;
            xor1 = t1;
        }

        iv = &(*ivec)[0];
        l2c(xor0, iv);
        l2c(xor1, iv);
    }
    tin0 = tin1 = tout0 = tout1 = xor0 = xor1 = 0;
    tin[0] = tin[1] = 0;
}
