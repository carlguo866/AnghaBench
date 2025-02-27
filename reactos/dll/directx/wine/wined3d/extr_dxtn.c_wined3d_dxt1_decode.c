
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int ) ;
 int TRUE ;






 int debug_d3dformat (int) ;
 int dxt1_to_x1r5g5b5 (int const*,int *,int ,int ,unsigned int,unsigned int,int ) ;
 int dxt1_to_x4r4g4b4 (int const*,int *,int ,int ,unsigned int,unsigned int,int ) ;
 int dxt1_to_x8r8g8b8 (int const*,int *,int ,int ,unsigned int,unsigned int,int ) ;
 int txc_dxtn_handle ;

BOOL wined3d_dxt1_decode(const BYTE *src, BYTE *dst, DWORD pitch_in, DWORD pitch_out,
        enum wined3d_format_id format, unsigned int w, unsigned int h)
{
    if (!txc_dxtn_handle)
        return FALSE;

    switch (format)
    {
        case 129:
            return dxt1_to_x8r8g8b8(src, dst, pitch_in, pitch_out, w, h, TRUE);
        case 128:
            return dxt1_to_x8r8g8b8(src, dst, pitch_in, pitch_out, w, h, FALSE);
        case 133:
            return dxt1_to_x4r4g4b4(src, dst, pitch_in, pitch_out, w, h, TRUE);
        case 132:
            return dxt1_to_x4r4g4b4(src, dst, pitch_in, pitch_out, w, h, FALSE);
        case 131:
            return dxt1_to_x1r5g5b5(src, dst, pitch_in, pitch_out, w, h, TRUE);
        case 130:
            return dxt1_to_x1r5g5b5(src, dst, pitch_in, pitch_out, w, h, FALSE);
        default:
            break;
    }

    FIXME("Cannot find a conversion function from format DXT1 to %s.\n", debug_d3dformat(format));
    return FALSE;
}
