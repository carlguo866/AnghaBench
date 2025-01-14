
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rawfb_image {int const h; int const w; unsigned char* pixels; int const pitch; scalar_t__ format; int pl; } ;
struct nk_color {unsigned char a; } ;


 int NK_ASSERT (struct rawfb_image const*) ;
 scalar_t__ NK_FONT_ATLAS_ALPHA8 ;
 unsigned int nk_rawfb_color2int (struct nk_color const,int ) ;

__attribute__((used)) static void
nk_rawfb_img_setpixel(const struct rawfb_image *img,
    const int x0, const int y0, const struct nk_color col)
{
    unsigned int c = nk_rawfb_color2int(col, img->pl);
    unsigned char *ptr;
    unsigned int *pixel;
    NK_ASSERT(img);
    if (y0 < img->h && y0 >= 0 && x0 >= 0 && x0 < img->w) {
        ptr = img->pixels + (img->pitch * y0);
 pixel = (unsigned int *)ptr;

        if (img->format == NK_FONT_ATLAS_ALPHA8) {
            ptr[x0] = col.a;
        } else {
     pixel[x0] = c;
        }
    }
}
