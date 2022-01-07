
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char* const_DES_cblock ;
typedef int DES_key_schedule ;
typedef unsigned char* DES_cblock ;
typedef int DES_LONG ;


 int DES_DECRYPT ;
 int DES_ENCRYPT ;
 int DES_encrypt1 (int*,int *,int ) ;
 int c2l (unsigned char const*,int) ;
 int c2ln (unsigned char const*,int,int,long) ;
 int l2c (int,unsigned char*) ;
 int l2cn (int,int,unsigned char*,long) ;

void DES_xcbc_encrypt(const unsigned char *in, unsigned char *out,
                      long length, DES_key_schedule *schedule,
                      DES_cblock *ivec, const_DES_cblock *inw,
                      const_DES_cblock *outw, int enc)
{
    register DES_LONG tin0, tin1;
    register DES_LONG tout0, tout1, xor0, xor1;
    register DES_LONG inW0, inW1, outW0, outW1;
    register const unsigned char *in2;
    register long l = length;
    DES_LONG tin[2];
    unsigned char *iv;

    in2 = &(*inw)[0];
    c2l(in2, inW0);
    c2l(in2, inW1);
    in2 = &(*outw)[0];
    c2l(in2, outW0);
    c2l(in2, outW1);

    iv = &(*ivec)[0];

    if (enc) {
        c2l(iv, tout0);
        c2l(iv, tout1);
        for (l -= 8; l >= 0; l -= 8) {
            c2l(in, tin0);
            c2l(in, tin1);
            tin0 ^= tout0 ^ inW0;
            tin[0] = tin0;
            tin1 ^= tout1 ^ inW1;
            tin[1] = tin1;
            DES_encrypt1(tin, schedule, DES_ENCRYPT);
            tout0 = tin[0] ^ outW0;
            l2c(tout0, out);
            tout1 = tin[1] ^ outW1;
            l2c(tout1, out);
        }
        if (l != -8) {
            c2ln(in, tin0, tin1, l + 8);
            tin0 ^= tout0 ^ inW0;
            tin[0] = tin0;
            tin1 ^= tout1 ^ inW1;
            tin[1] = tin1;
            DES_encrypt1(tin, schedule, DES_ENCRYPT);
            tout0 = tin[0] ^ outW0;
            l2c(tout0, out);
            tout1 = tin[1] ^ outW1;
            l2c(tout1, out);
        }
        iv = &(*ivec)[0];
        l2c(tout0, iv);
        l2c(tout1, iv);
    } else {
        c2l(iv, xor0);
        c2l(iv, xor1);
        for (l -= 8; l > 0; l -= 8) {
            c2l(in, tin0);
            tin[0] = tin0 ^ outW0;
            c2l(in, tin1);
            tin[1] = tin1 ^ outW1;
            DES_encrypt1(tin, schedule, DES_DECRYPT);
            tout0 = tin[0] ^ xor0 ^ inW0;
            tout1 = tin[1] ^ xor1 ^ inW1;
            l2c(tout0, out);
            l2c(tout1, out);
            xor0 = tin0;
            xor1 = tin1;
        }
        if (l != -8) {
            c2l(in, tin0);
            tin[0] = tin0 ^ outW0;
            c2l(in, tin1);
            tin[1] = tin1 ^ outW1;
            DES_encrypt1(tin, schedule, DES_DECRYPT);
            tout0 = tin[0] ^ xor0 ^ inW0;
            tout1 = tin[1] ^ xor1 ^ inW1;
            l2cn(tout0, tout1, out, l + 8);
            xor0 = tin0;
            xor1 = tin1;
        }

        iv = &(*ivec)[0];
        l2c(xor0, iv);
        l2c(xor1, iv);
    }
    tin0 = tin1 = tout0 = tout1 = xor0 = xor1 = 0;
    inW0 = inW1 = outW0 = outW1 = 0;
    tin[0] = tin[1] = 0;
}
