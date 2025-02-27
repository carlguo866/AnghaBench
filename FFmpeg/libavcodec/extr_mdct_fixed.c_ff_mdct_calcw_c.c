
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {int im; int re; } ;
struct TYPE_8__ {int* revtab; int mdct_bits; int (* fft_calc ) (TYPE_2__*,TYPE_3__*) ;TYPE_3__* tmp_buf; int * tsin; int * tcos; } ;
struct TYPE_7__ {void* im; void* re; } ;
typedef int FFTSample ;
typedef void* FFTDouble ;
typedef TYPE_1__ FFTDComplex ;
typedef TYPE_2__ FFTContext ;
typedef TYPE_3__ FFTComplex ;


 int CMUL (int ,int ,void*,void*,int const,int const) ;
 int CMULL (void*,void*,int ,int ,int const,int const) ;
 void* RSCALE (int const,int const) ;
 int stub1 (TYPE_2__*,TYPE_3__*) ;

void ff_mdct_calcw_c(FFTContext *s, FFTDouble *out, const FFTSample *input)
{
    int i, j, n, n8, n4, n2, n3;
    FFTDouble re, im;
    const uint16_t *revtab = s->revtab;
    const FFTSample *tcos = s->tcos;
    const FFTSample *tsin = s->tsin;
    FFTComplex *x = s->tmp_buf;
    FFTDComplex *o = (FFTDComplex *)out;

    n = 1 << s->mdct_bits;
    n2 = n >> 1;
    n4 = n >> 2;
    n8 = n >> 3;
    n3 = 3 * n4;


    for(i=0;i<n8;i++) {
        re = RSCALE(-input[2*i+n3], - input[n3-1-2*i]);
        im = RSCALE(-input[n4+2*i], + input[n4-1-2*i]);
        j = revtab[i];
        CMUL(x[j].re, x[j].im, re, im, -tcos[i], tsin[i]);

        re = RSCALE( input[2*i] , - input[n2-1-2*i]);
        im = RSCALE(-input[n2+2*i], - input[ n-1-2*i]);
        j = revtab[n8 + i];
        CMUL(x[j].re, x[j].im, re, im, -tcos[n8 + i], tsin[n8 + i]);
    }

    s->fft_calc(s, x);


    for(i=0;i<n8;i++) {
        FFTDouble r0, i0, r1, i1;
        CMULL(i1, r0, x[n8-i-1].re, x[n8-i-1].im, -tsin[n8-i-1], -tcos[n8-i-1]);
        CMULL(i0, r1, x[n8+i ].re, x[n8+i ].im, -tsin[n8+i ], -tcos[n8+i ]);
        o[n8-i-1].re = r0;
        o[n8-i-1].im = i0;
        o[n8+i ].re = r1;
        o[n8+i ].im = i1;
    }
}
