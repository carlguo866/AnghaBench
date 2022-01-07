
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint64_t ;
struct TYPE_3__ {int * round_keys; scalar_t__ triple_des; } ;
typedef TYPE_1__ AVDES ;


 int AV_RB64 (int const*) ;
 int AV_WB64 (int const*,int) ;
 int des_encdec (int,int ,int) ;

__attribute__((used)) static void av_des_crypt_mac(AVDES *d, uint8_t *dst, const uint8_t *src,
                             int count, uint8_t *iv, int decrypt, int mac)
{
    uint64_t iv_val = iv ? AV_RB64(iv) : 0;
    while (count-- > 0) {
        uint64_t dst_val;
        uint64_t src_val = src ? AV_RB64(src) : 0;
        if (decrypt) {
            uint64_t tmp = src_val;
            if (d->triple_des) {
                src_val = des_encdec(src_val, d->round_keys[2], 1);
                src_val = des_encdec(src_val, d->round_keys[1], 0);
            }
            dst_val = des_encdec(src_val, d->round_keys[0], 1) ^ iv_val;
            iv_val = iv ? tmp : 0;
        } else {
            dst_val = des_encdec(src_val ^ iv_val, d->round_keys[0], 0);
            if (d->triple_des) {
                dst_val = des_encdec(dst_val, d->round_keys[1], 1);
                dst_val = des_encdec(dst_val, d->round_keys[2], 0);
            }
            iv_val = iv ? dst_val : 0;
        }
        AV_WB64(dst, dst_val);
        src += 8;
        if (!mac)
            dst += 8;
    }
    if (iv)
        AV_WB64(iv, iv_val);
}
