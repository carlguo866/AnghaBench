
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int numcomps; TYPE_1__* comps; } ;
typedef TYPE_2__ opj_image_t ;
struct TYPE_4__ {unsigned int w; unsigned int h; unsigned int bpp; unsigned int prec; void** data; } ;
typedef scalar_t__ OPJ_UINT8 ;
typedef unsigned int OPJ_UINT32 ;
typedef void* OPJ_INT32 ;
typedef int OPJ_BOOL ;


 int bmp_mask_get_shift_and_prec (unsigned int,unsigned int*,unsigned int*) ;

__attribute__((used)) static void bmpmask32toimage(const OPJ_UINT8* pData, OPJ_UINT32 stride,
                             opj_image_t* image, OPJ_UINT32 redMask, OPJ_UINT32 greenMask,
                             OPJ_UINT32 blueMask, OPJ_UINT32 alphaMask)
{
    int index;
    OPJ_UINT32 width, height;
    OPJ_UINT32 x, y;
    const OPJ_UINT8 *pSrc = ((void*)0);
    OPJ_BOOL hasAlpha;
    OPJ_UINT32 redShift, redPrec;
    OPJ_UINT32 greenShift, greenPrec;
    OPJ_UINT32 blueShift, bluePrec;
    OPJ_UINT32 alphaShift, alphaPrec;

    width = image->comps[0].w;
    height = image->comps[0].h;

    hasAlpha = image->numcomps > 3U;

    bmp_mask_get_shift_and_prec(redMask, &redShift, &redPrec);
    bmp_mask_get_shift_and_prec(greenMask, &greenShift, &greenPrec);
    bmp_mask_get_shift_and_prec(blueMask, &blueShift, &bluePrec);
    bmp_mask_get_shift_and_prec(alphaMask, &alphaShift, &alphaPrec);

    image->comps[0].bpp = redPrec;
    image->comps[0].prec = redPrec;
    image->comps[1].bpp = greenPrec;
    image->comps[1].prec = greenPrec;
    image->comps[2].bpp = bluePrec;
    image->comps[2].prec = bluePrec;
    if (hasAlpha) {
        image->comps[3].bpp = alphaPrec;
        image->comps[3].prec = alphaPrec;
    }

    index = 0;
    pSrc = pData + (height - 1U) * stride;
    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++) {
            OPJ_UINT32 value = 0U;

            value |= ((OPJ_UINT32)pSrc[4 * x + 0]) << 0;
            value |= ((OPJ_UINT32)pSrc[4 * x + 1]) << 8;
            value |= ((OPJ_UINT32)pSrc[4 * x + 2]) << 16;
            value |= ((OPJ_UINT32)pSrc[4 * x + 3]) << 24;

            image->comps[0].data[index] = (OPJ_INT32)((value & redMask) >>
                                          redShift);
            image->comps[1].data[index] = (OPJ_INT32)((value & greenMask) >>
                                          greenShift);
            image->comps[2].data[index] = (OPJ_INT32)((value & blueMask) >>
                                          blueShift);
            if (hasAlpha) {
                image->comps[3].data[index] = (OPJ_INT32)((value & alphaMask) >>
                                              alphaShift);
            }
            index++;
        }
        pSrc -= stride;
    }
}
