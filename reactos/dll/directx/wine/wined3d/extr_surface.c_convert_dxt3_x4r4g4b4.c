
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;


 int WINED3DFMT_B4G4R4X4_UNORM ;
 int wined3d_dxt3_decode (int const*,int *,int ,int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void convert_dxt3_x4r4g4b4(const BYTE *src, BYTE *dst,
        DWORD pitch_in, DWORD pitch_out, unsigned int w, unsigned int h)
{
    wined3d_dxt3_decode(src, dst, pitch_in, pitch_out, WINED3DFMT_B4G4R4X4_UNORM, w, h);
}
