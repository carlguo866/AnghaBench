
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline void yuy2toyv12_c(const uint8_t *src, uint8_t *ydst,
                                uint8_t *udst, uint8_t *vdst,
                                int width, int height, int lumStride,
                                int chromStride, int srcStride)
{
    int y;
    const int chromWidth = width >> 1;

    for (y = 0; y < height; y += 2) {
        int i;
        for (i = 0; i < chromWidth; i++) {
            ydst[2 * i + 0] = src[4 * i + 0];
            udst[i] = src[4 * i + 1];
            ydst[2 * i + 1] = src[4 * i + 2];
            vdst[i] = src[4 * i + 3];
        }
        ydst += lumStride;
        src += srcStride;

        for (i = 0; i < chromWidth; i++) {
            ydst[2 * i + 0] = src[4 * i + 0];
            ydst[2 * i + 1] = src[4 * i + 2];
        }
        udst += chromStride;
        vdst += chromStride;
        ydst += lumStride;
        src += srcStride;
    }
}
