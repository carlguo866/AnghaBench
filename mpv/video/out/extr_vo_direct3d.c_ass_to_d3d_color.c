
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int D3DCOLOR ;


 int D3DCOLOR_ARGB (int,int,int,int) ;

__attribute__((used)) static D3DCOLOR ass_to_d3d_color(uint32_t color)
{
    uint32_t r = (color >> 24) & 0xff;
    uint32_t g = (color >> 16) & 0xff;
    uint32_t b = (color >> 8) & 0xff;
    uint32_t a = 0xff - (color & 0xff);
    return D3DCOLOR_ARGB(a, r, g, b);
}
