
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline void rgb_to_yuv( uint8_t *y, uint8_t *u, uint8_t *v,
                               int r, int g, int b )
{
    *y = ( ( ( 66 * r + 129 * g + 25 * b + 128 ) >> 8 ) + 16 );
    *u = ( ( -38 * r - 74 * g + 112 * b + 128 ) >> 8 ) + 128 ;
    *v = ( ( 112 * r - 94 * g - 18 * b + 128 ) >> 8 ) + 128 ;
}
