
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decompose (float*,float*,float const*,int,int) ;

__attribute__((used)) static inline void decompose2D(float *dst_l, float *dst_h, const float *src,
                               int xlinesize, int ylinesize,
                               int step, int w, int h)
{
    int y, x;
    for (y = 0; y < h; y++)
        for (x = 0; x < step; x++)
            decompose(dst_l + ylinesize*y + xlinesize*x,
                      dst_h + ylinesize*y + xlinesize*x,
                      src + ylinesize*y + xlinesize*x,
                      step * xlinesize, (w - x + step - 1) / step);
}
