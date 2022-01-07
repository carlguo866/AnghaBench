
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int draw_basis (int *,int,int,int,int) ;

__attribute__((used)) static void freq_test(uint8_t *dst, int dst_linesize, int off)
{
    int x, y, freq = 0;

    for (y = 0; y < 8*16; y += 16) {
        for (x = 0; x < 8*16; x += 16) {
            draw_basis(dst + x + y*dst_linesize, dst_linesize, 4*(96+off), freq, 128*8);
            freq++;
        }
    }
}
