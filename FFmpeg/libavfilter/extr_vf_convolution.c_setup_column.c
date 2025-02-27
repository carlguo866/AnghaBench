
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FFABS (int) ;

__attribute__((used)) static void setup_column(int radius, const uint8_t *c[], const uint8_t *src, int stride,
                         int x, int w, int y, int h, int bpc)
{
    int i;

    for (i = 0; i < radius * 2 + 1; i++) {
        int xoff = FFABS(x + i - radius);

        xoff = xoff >= h ? 2 * h - 1 - xoff : xoff;

        c[i] = src + y * bpc + xoff * stride;
    }
}
