
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ NLMeansDSPContext ;


 int av_freep (int **) ;
 int * av_mallocz_array (int const,int const) ;
 int compute_ssd_integral_image (TYPE_1__*,int *,int const,int const*,int const,int,int,int const,int const,int const) ;
 int compute_unsafe_ssd_integral_image (int *,int const,int ,int ,int const*,int const,int,int,int const,int const,int const,int const,int const) ;
 int display_integral (int *,int const,int const,int const) ;
 int ff_nlmeans_init (TYPE_1__*) ;
 scalar_t__ memcmp (int *,int *,int const) ;
 int printf (char*,...) ;

int main(void)
{
    int ret = 0, xoff, yoff;
    uint32_t *ii_start;
    uint32_t *ii_start2;
    NLMeansDSPContext dsp = {0};


    const int w = 6, h = 5, lz = 8;
    static const uint8_t src[] = {
        0xb0, 0x71, 0xfb, 0xd8, 0x01, 0xd9, 0x01, 0x02,
        0x51, 0x8e, 0x41, 0x0f, 0x84, 0x58, 0x03, 0x04,
        0xc7, 0x8d, 0x07, 0x70, 0x5c, 0x47, 0x05, 0x06,
        0x09, 0x4e, 0xfc, 0x74, 0x8f, 0x9a, 0x07, 0x08,
        0x60, 0x8e, 0x20, 0xaa, 0x95, 0x7d, 0x09, 0x0a,
    };

    const int e = 3;
    const int ii_w = w+e*2, ii_h = h+e*2;


    const int ii_lz_32 = ((ii_w + 1) + 3) & ~3;


    uint32_t *ii = av_mallocz_array(ii_h + 1, ii_lz_32 * sizeof(*ii));
    uint32_t *ii2 = av_mallocz_array(ii_h + 1, ii_lz_32 * sizeof(*ii2));

    if (!ii || !ii2)
        return -1;

    ii_start = ii + ii_lz_32 + 1;
    ii_start2 = ii2 + ii_lz_32 + 1;

    ff_nlmeans_init(&dsp);

    for (yoff = -e; yoff <= e; yoff++) {
        for (xoff = -e; xoff <= e; xoff++) {
            printf("xoff=%d yoff=%d\n", xoff, yoff);

            compute_ssd_integral_image(&dsp, ii_start, ii_lz_32,
                                       src, lz, xoff, yoff, e, w, h);
            display_integral(ii_start, ii_w, ii_h, ii_lz_32);

            compute_unsafe_ssd_integral_image(ii_start2, ii_lz_32,
                                              0, 0,
                                              src, lz,
                                              xoff, yoff, e, w, h,
                                              ii_w, ii_h);
            display_integral(ii_start2, ii_w, ii_h, ii_lz_32);

            if (memcmp(ii, ii2, (ii_h+1) * ii_lz_32 * sizeof(*ii))) {
                printf("Integral mismatch\n");
                ret = 1;
                goto end;
            }
        }
    }

end:
    av_freep(&ii);
    av_freep(&ii2);
    return ret;
}
