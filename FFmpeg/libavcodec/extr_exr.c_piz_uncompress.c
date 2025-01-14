
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_10__ {scalar_t__ pixel_type; } ;
struct TYPE_7__ {int (* bswap16_buf ) (scalar_t__*,scalar_t__*,int) ;} ;
struct TYPE_9__ {int nb_channels; TYPE_1__ bbdsp; TYPE_4__* channels; } ;
struct TYPE_8__ {scalar_t__ bitmap; scalar_t__ lut; int xsize; int ysize; scalar_t__ uncompressed_data; scalar_t__ tmp; } ;
typedef int GetByteContext ;
typedef TYPE_2__ EXRThreadData ;
typedef TYPE_3__ EXRContext ;
typedef TYPE_4__ EXRChannel ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ BITMAP_SIZE ;
 int ENOMEM ;
 scalar_t__ EXR_HALF ;
 scalar_t__ FFMIN (scalar_t__,scalar_t__) ;
 int apply_lut (scalar_t__,scalar_t__*,int) ;
 int av_freep (scalar_t__*) ;
 void* av_malloc (int) ;
 int bytestream2_get_buffer (int *,scalar_t__,scalar_t__) ;
 scalar_t__ bytestream2_get_le16 (int *) ;
 int bytestream2_init (int *,int const*,int) ;
 int huf_uncompress (int *,scalar_t__*,int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 scalar_t__ reverse_lut (scalar_t__,scalar_t__) ;
 int stub1 (scalar_t__*,scalar_t__*,int) ;
 int wav_decode (scalar_t__*,int,int,int,int,scalar_t__) ;

__attribute__((used)) static int piz_uncompress(EXRContext *s, const uint8_t *src, int ssize,
                          int dsize, EXRThreadData *td)
{
    GetByteContext gb;
    uint16_t maxval, min_non_zero, max_non_zero;
    uint16_t *ptr;
    uint16_t *tmp = (uint16_t *)td->tmp;
    uint16_t *out;
    uint16_t *in;
    int ret, i, j;
    int pixel_half_size;
    EXRChannel *channel;
    int tmp_offset;

    if (!td->bitmap)
        td->bitmap = av_malloc(BITMAP_SIZE);
    if (!td->lut)
        td->lut = av_malloc(1 << 17);
    if (!td->bitmap || !td->lut) {
        av_freep(&td->bitmap);
        av_freep(&td->lut);
        return AVERROR(ENOMEM);
    }

    bytestream2_init(&gb, src, ssize);
    min_non_zero = bytestream2_get_le16(&gb);
    max_non_zero = bytestream2_get_le16(&gb);

    if (max_non_zero >= BITMAP_SIZE)
        return AVERROR_INVALIDDATA;

    memset(td->bitmap, 0, FFMIN(min_non_zero, BITMAP_SIZE));
    if (min_non_zero <= max_non_zero)
        bytestream2_get_buffer(&gb, td->bitmap + min_non_zero,
                               max_non_zero - min_non_zero + 1);
    memset(td->bitmap + max_non_zero + 1, 0, BITMAP_SIZE - max_non_zero - 1);

    maxval = reverse_lut(td->bitmap, td->lut);

    ret = huf_uncompress(&gb, tmp, dsize / sizeof(uint16_t));
    if (ret)
        return ret;

    ptr = tmp;
    for (i = 0; i < s->nb_channels; i++) {
        channel = &s->channels[i];

        if (channel->pixel_type == EXR_HALF)
            pixel_half_size = 1;
        else
            pixel_half_size = 2;

        for (j = 0; j < pixel_half_size; j++)
            wav_decode(ptr + j, td->xsize, pixel_half_size, td->ysize,
                       td->xsize * pixel_half_size, maxval);
        ptr += td->xsize * td->ysize * pixel_half_size;
    }

    apply_lut(td->lut, tmp, dsize / sizeof(uint16_t));

    out = (uint16_t *)td->uncompressed_data;
    for (i = 0; i < td->ysize; i++) {
        tmp_offset = 0;
        for (j = 0; j < s->nb_channels; j++) {
            channel = &s->channels[j];
            if (channel->pixel_type == EXR_HALF)
                pixel_half_size = 1;
            else
                pixel_half_size = 2;

            in = tmp + tmp_offset * td->xsize * td->ysize + i * td->xsize * pixel_half_size;
            tmp_offset += pixel_half_size;




            memcpy(out, in, td->xsize * 2 * pixel_half_size);

            out += td->xsize * pixel_half_size;
        }
    }

    return 0;
}
