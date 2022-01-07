
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int** ff_mvtab ;
 int put_bits (int *,int,int) ;
 int sign_extend (int,int) ;

void ff_h263_encode_motion(PutBitContext *pb, int val, int f_code)
{
    int range, bit_size, sign, code, bits;

    if (val == 0) {

        code = 0;
        put_bits(pb, ff_mvtab[code][1], ff_mvtab[code][0]);
    } else {
        bit_size = f_code - 1;
        range = 1 << bit_size;

        val = sign_extend(val, 6 + bit_size);
        sign = val>>31;
        val= (val^sign)-sign;
        sign&=1;

        val--;
        code = (val >> bit_size) + 1;
        bits = val & (range - 1);

        put_bits(pb, ff_mvtab[code][1] + 1, (ff_mvtab[code][0] << 1) | sign);
        if (bit_size > 0) {
            put_bits(pb, bit_size, bits);
        }
    }
}
