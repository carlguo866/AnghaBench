
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int VLC ;
typedef int GetBitContext ;


 int decode_coeff (int *,int,int,int *,int *,int) ;
 int* modulo_three_table ;

__attribute__((used)) static inline void decode_subblock(int16_t *dst, int code, const int is_block2, GetBitContext *gb, VLC *vlc, int q)
{
    int flags = modulo_three_table[code];

    decode_coeff( dst+0*4+0, (flags >> 6) , 3, gb, vlc, q);
    if(is_block2){
        decode_coeff(dst+1*4+0, (flags >> 4) & 3, 2, gb, vlc, q);
        decode_coeff(dst+0*4+1, (flags >> 2) & 3, 2, gb, vlc, q);
    }else{
        decode_coeff(dst+0*4+1, (flags >> 4) & 3, 2, gb, vlc, q);
        decode_coeff(dst+1*4+0, (flags >> 2) & 3, 2, gb, vlc, q);
    }
    decode_coeff( dst+1*4+1, (flags >> 0) & 3, 2, gb, vlc, q);
}
