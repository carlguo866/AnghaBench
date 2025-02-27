
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int const int64_t ;
struct TYPE_5__ {int height; int width; } ;
typedef TYPE_1__ ThreadData ;
struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int depth; float postscale; float postscaleV; float* buffer; } ;
typedef TYPE_2__ GBlurContext ;
typedef TYPE_3__ AVFilterContext ;


 float av_clipf (float,float,float const) ;

__attribute__((used)) static int filter_postscale(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    GBlurContext *s = ctx->priv;
    ThreadData *td = arg;
    const float max = (1 << s->depth) - 1;
    const int height = td->height;
    const int width = td->width;
    const int64_t numpixels = width * (int64_t)height;
    const unsigned slice_start = (numpixels * jobnr ) / nb_jobs;
    const unsigned slice_end = (numpixels * (jobnr+1)) / nb_jobs;
    const float postscale = s->postscale * s->postscaleV;
    float *buffer = s->buffer;
    unsigned i;

    for (i = slice_start; i < slice_end; i++) {
        buffer[i] *= postscale;
        buffer[i] = av_clipf(buffer[i], 0.f, max);
    }

    return 0;
}
