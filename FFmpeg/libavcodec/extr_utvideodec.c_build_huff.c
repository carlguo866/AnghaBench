
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int VLC ;
struct TYPE_3__ {int sym; int len; } ;
typedef TYPE_1__ HuffEntry ;


 int VLC_BITS ;
 int ff_init_vlc_sparse (int *,int ,int,int*,int,int,int*,int,int,int*,int,int,int ) ;
 int ff_ut_huff_cmp_len ;
 int qsort (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static int build_huff(const uint8_t *src, VLC *vlc, int *fsym)
{
    int i;
    HuffEntry he[256];
    int last;
    uint32_t codes[256];
    uint8_t bits[256];
    uint8_t syms[256];
    uint32_t code;

    *fsym = -1;
    for (i = 0; i < 256; i++) {
        he[i].sym = i;
        he[i].len = *src++;
    }
    qsort(he, 256, sizeof(*he), ff_ut_huff_cmp_len);

    if (!he[0].len) {
        *fsym = he[0].sym;
        return 0;
    }

    last = 255;
    while (he[last].len == 255 && last)
        last--;

    if (he[last].len > 32)
        return -1;

    code = 1;
    for (i = last; i >= 0; i--) {
        codes[i] = code >> (32 - he[i].len);
        bits[i] = he[i].len;
        syms[i] = he[i].sym;
        code += 0x80000000u >> (he[i].len - 1);
    }

    return ff_init_vlc_sparse(vlc, VLC_BITS, last + 1,
                              bits, sizeof(*bits), sizeof(*bits),
                              codes, sizeof(*codes), sizeof(*codes),
                              syms, sizeof(*syms), sizeof(*syms), 0);
}
