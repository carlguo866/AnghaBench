
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int br_y; int br_x; int bl_y; int bl_x; int fr_y; int fr_x; int fl_y; int fl_x; int fc_y; int fc_x; int lfe_mode; int highcut; int lowcut; int output_lfe; TYPE_1__* output; } ;
struct TYPE_5__ {scalar_t__* extended_data; } ;
typedef TYPE_2__ AudioSurroundContext ;
typedef TYPE_3__ AVFilterContext ;


 float cosf (float) ;
 float fabsf (float) ;
 int get_lfe (int ,int,int ,int ,float*,float*,int ) ;
 float powf (float,int ) ;
 float sinf (float) ;

__attribute__((used)) static void upmix_5_1_back(AVFilterContext *ctx,
                           float l_phase,
                           float r_phase,
                           float c_phase,
                           float mag_total,
                           float x, float y,
                           int n)
{
    AudioSurroundContext *s = ctx->priv;
    float lfe_mag, l_mag, r_mag, ls_mag, rs_mag, c_mag, *dstc, *dstl, *dstr, *dstls, *dstrs, *dstlfe;

    dstl = (float *)s->output->extended_data[0];
    dstr = (float *)s->output->extended_data[1];
    dstc = (float *)s->output->extended_data[2];
    dstlfe = (float *)s->output->extended_data[3];
    dstls = (float *)s->output->extended_data[4];
    dstrs = (float *)s->output->extended_data[5];

    get_lfe(s->output_lfe, n, s->lowcut, s->highcut, &lfe_mag, &mag_total, s->lfe_mode);

    c_mag = powf(1.f - fabsf(x), s->fc_x) * powf((y + 1.f) * .5f, s->fc_y) * mag_total;
    l_mag = powf(.5f * ( x + 1.f), s->fl_x) * powf((y + 1.f) * .5f, s->fl_y) * mag_total;
    r_mag = powf(.5f * (-x + 1.f), s->fr_x) * powf((y + 1.f) * .5f, s->fr_y) * mag_total;
    ls_mag = powf(.5f * ( x + 1.f), s->bl_x) * powf(1.f - ((y + 1.f) * .5f), s->bl_y) * mag_total;
    rs_mag = powf(.5f * (-x + 1.f), s->br_x) * powf(1.f - ((y + 1.f) * .5f), s->br_y) * mag_total;

    dstl[2 * n ] = l_mag * cosf(l_phase);
    dstl[2 * n + 1] = l_mag * sinf(l_phase);

    dstr[2 * n ] = r_mag * cosf(r_phase);
    dstr[2 * n + 1] = r_mag * sinf(r_phase);

    dstc[2 * n ] = c_mag * cosf(c_phase);
    dstc[2 * n + 1] = c_mag * sinf(c_phase);

    dstlfe[2 * n ] = lfe_mag * cosf(c_phase);
    dstlfe[2 * n + 1] = lfe_mag * sinf(c_phase);

    dstls[2 * n ] = ls_mag * cosf(l_phase);
    dstls[2 * n + 1] = ls_mag * sinf(l_phase);

    dstrs[2 * n ] = rs_mag * cosf(r_phase);
    dstrs[2 * n + 1] = rs_mag * sinf(r_phase);
}
