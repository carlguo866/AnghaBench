
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int table; } ;
struct TYPE_4__ {int rnd; } ;
typedef TYPE_1__ MPCContext ;
typedef int GetBitContext ;


 int SAMPLES_PER_BAND ;
 int av_lfg_get (int *) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 void* get_vlc2 (int *,int ,int,int) ;
 int * mpc7_idx30 ;
 int * mpc7_idx31 ;
 int * mpc7_idx32 ;
 int * mpc7_idx50 ;
 int * mpc7_idx51 ;
 void** mpc7_quant_vlc_off ;
 TYPE_2__** quant_vlc ;

__attribute__((used)) static inline void idx_to_quant(MPCContext *c, GetBitContext *gb, int idx, int *dst)
{
    int i, i1, t;
    switch(idx){
    case -1:
        for(i = 0; i < SAMPLES_PER_BAND; i++){
            *dst++ = (av_lfg_get(&c->rnd) & 0x3FC) - 510;
        }
        break;
    case 1:
        i1 = get_bits1(gb);
        for(i = 0; i < SAMPLES_PER_BAND/3; i++){
            t = get_vlc2(gb, quant_vlc[0][i1].table, 9, 2);
            *dst++ = mpc7_idx30[t];
            *dst++ = mpc7_idx31[t];
            *dst++ = mpc7_idx32[t];
        }
        break;
    case 2:
        i1 = get_bits1(gb);
        for(i = 0; i < SAMPLES_PER_BAND/2; i++){
            t = get_vlc2(gb, quant_vlc[1][i1].table, 9, 2);
            *dst++ = mpc7_idx50[t];
            *dst++ = mpc7_idx51[t];
        }
        break;
    case 3: case 4: case 5: case 6: case 7:
        i1 = get_bits1(gb);
        for(i = 0; i < SAMPLES_PER_BAND; i++)
            *dst++ = get_vlc2(gb, quant_vlc[idx-1][i1].table, 9, 2) - mpc7_quant_vlc_off[idx-1];
        break;
    case 8: case 9: case 10: case 11: case 12:
    case 13: case 14: case 15: case 16: case 17:
        t = (1 << (idx - 2)) - 1;
        for(i = 0; i < SAMPLES_PER_BAND; i++)
            *dst++ = get_bits(gb, idx - 1) - t;
        break;
    default:
        return;
    }
}
