
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef long long int32_t ;
struct TYPE_3__ {int** linelen; int ndeclevels; long long* i_linebuf; int** mod; } ;
typedef TYPE_1__ DWTContext ;


 long long I_LFTG_K ;
 long long I_PRESHIFT ;
 int sr_1d97_int (long long*,int,int) ;

__attribute__((used)) static void dwt_decode97_int(DWTContext *s, int32_t *t)
{
    int lev;
    int w = s->linelen[s->ndeclevels - 1][0];
    int h = s->linelen[s->ndeclevels - 1][1];
    int i;
    int32_t *line = s->i_linebuf;
    int32_t *data = t;

    line += 5;

    for (i = 0; i < w * h; i++)
        data[i] *= 1LL << I_PRESHIFT;

    for (lev = 0; lev < s->ndeclevels; lev++) {
        int lh = s->linelen[lev][0],
            lv = s->linelen[lev][1],
            mh = s->mod[lev][0],
            mv = s->mod[lev][1],
            lp;
        int32_t *l;

        l = line + mh;
        for (lp = 0; lp < lv; lp++) {
            int i, j = 0;

            for (i = mh; i < lh; i += 2, j++)
                l[i] = ((data[w * lp + j] * I_LFTG_K) + (1 << 15)) >> 16;
            for (i = 1 - mh; i < lh; i += 2, j++)
                l[i] = data[w * lp + j];

            sr_1d97_int(line, mh, mh + lh);

            for (i = 0; i < lh; i++)
                data[w * lp + i] = l[i];
        }


        l = line + mv;
        for (lp = 0; lp < lh; lp++) {
            int i, j = 0;

            for (i = mv; i < lv; i += 2, j++)
                l[i] = ((data[w * j + lp] * I_LFTG_K) + (1 << 15)) >> 16;
            for (i = 1 - mv; i < lv; i += 2, j++)
                l[i] = data[w * j + lp];

            sr_1d97_int(line, mv, mv + lv);

            for (i = 0; i < lv; i++)
                data[w * i + lp] = l[i];
        }
    }

    for (i = 0; i < w * h; i++)
        data[i] = (data[i] + ((1LL<<I_PRESHIFT)>>1)) >> I_PRESHIFT;
}
