
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int filter_t ;
struct TYPE_4__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_1__ block_t ;


 int VLC_UNUSED (int *) ;
 scalar_t__ lroundf (float) ;

__attribute__((used)) static block_t *Fl32toU8(filter_t *filter, block_t *b)
{
    float *src = (float *)b->p_buffer;
    uint8_t *dst = (uint8_t *)src;
    for (size_t i = b->i_buffer / 4; i--;)
    {
        float s = *(src++) * 128.f;
        if (s >= 127.f)
            *(dst++) = 255;
        else
        if (s <= -128.f)
            *(dst++) = 0;
        else
            *(dst++) = lroundf(s) + 128;
    }
    b->i_buffer /= 4;
    VLC_UNUSED(filter);
    return b;
}
