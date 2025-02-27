
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ALIGN (int,int) ;
 int SZ_4K ;
 int SZ_8K ;

__attribute__((used)) static u32 get_framesize_raw_nv12(u32 width, u32 height)
{
 u32 y_stride, uv_stride, y_plane;
 u32 y_sclines, uv_sclines, uv_plane;
 u32 size;

 y_stride = ALIGN(width, 128);
 uv_stride = ALIGN(width, 128);
 y_sclines = ALIGN(height, 32);
 uv_sclines = ALIGN(((height + 1) >> 1), 16);

 y_plane = y_stride * y_sclines;
 uv_plane = uv_stride * uv_sclines + SZ_4K;
 size = y_plane + uv_plane + SZ_8K;

 return ALIGN(size, SZ_4K);
}
