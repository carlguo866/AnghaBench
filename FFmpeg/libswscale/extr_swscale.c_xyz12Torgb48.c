
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct SwsContext {int* xyzgamma; int** xyz2rgb_matrix; int* rgbgamma; int srcFormat; } ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;


 int AV_PIX_FMT_FLAG_BE ;
 int AV_RB16 (int const*) ;
 int AV_RL16 (int const*) ;
 int AV_WB16 (int *,int) ;
 int AV_WL16 (int *,int) ;
 int av_clip_uintp2 (int,int) ;
 TYPE_1__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static void xyz12Torgb48(struct SwsContext *c, uint16_t *dst,
                         const uint16_t *src, int stride, int h)
{
    int xp,yp;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(c->srcFormat);

    for (yp=0; yp<h; yp++) {
        for (xp=0; xp+2<stride; xp+=3) {
            int x, y, z, r, g, b;

            if (desc->flags & AV_PIX_FMT_FLAG_BE) {
                x = AV_RB16(src + xp + 0);
                y = AV_RB16(src + xp + 1);
                z = AV_RB16(src + xp + 2);
            } else {
                x = AV_RL16(src + xp + 0);
                y = AV_RL16(src + xp + 1);
                z = AV_RL16(src + xp + 2);
            }

            x = c->xyzgamma[x>>4];
            y = c->xyzgamma[y>>4];
            z = c->xyzgamma[z>>4];


            r = c->xyz2rgb_matrix[0][0] * x +
                c->xyz2rgb_matrix[0][1] * y +
                c->xyz2rgb_matrix[0][2] * z >> 12;
            g = c->xyz2rgb_matrix[1][0] * x +
                c->xyz2rgb_matrix[1][1] * y +
                c->xyz2rgb_matrix[1][2] * z >> 12;
            b = c->xyz2rgb_matrix[2][0] * x +
                c->xyz2rgb_matrix[2][1] * y +
                c->xyz2rgb_matrix[2][2] * z >> 12;


            r = av_clip_uintp2(r, 12);
            g = av_clip_uintp2(g, 12);
            b = av_clip_uintp2(b, 12);


            if (desc->flags & AV_PIX_FMT_FLAG_BE) {
                AV_WB16(dst + xp + 0, c->rgbgamma[r] << 4);
                AV_WB16(dst + xp + 1, c->rgbgamma[g] << 4);
                AV_WB16(dst + xp + 2, c->rgbgamma[b] << 4);
            } else {
                AV_WL16(dst + xp + 0, c->rgbgamma[r] << 4);
                AV_WL16(dst + xp + 1, c->rgbgamma[g] << 4);
                AV_WL16(dst + xp + 2, c->rgbgamma[b] << 4);
            }
        }
        src += stride;
        dst += stride;
    }
}
