
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef float uint16_t ;
struct TYPE_3__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;


 int* avpriv_cga_font ;

__attribute__((used)) static void draw_htext16(AVFrame *out, int x, int y, float o1, float o2, const char *txt, const uint16_t color[4])
{
    const uint8_t *font;
    int font_height;
    int i, plane;

    font = avpriv_cga_font, font_height = 8;

    for (plane = 0; plane < 4 && out->data[plane]; plane++) {
        for (i = 0; txt[i]; i++) {
            int char_y, mask;
            int v = color[plane];

            uint16_t *p = (uint16_t *)(out->data[plane] + y * out->linesize[plane]) + (x + i * 8);
            for (char_y = font_height - 1; char_y >= 0; char_y--) {
                for (mask = 0x80; mask; mask >>= 1) {
                    if (font[txt[i] * font_height + char_y] & mask)
                        p[0] = p[0] * o2 + v * o1;
                    p++;
                }
                p += out->linesize[plane] / 2 - 8;
            }
        }
    }
}
