
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {void* pix_fmt; int d3d_format; } ;
struct TYPE_10__ {int device; } ;
struct TYPE_9__ {TYPE_3__* hwctx; } ;
struct TYPE_8__ {void** valid_hw_formats; void** valid_sw_formats; } ;
typedef int HRESULT ;
typedef TYPE_1__ AVHWFramesConstraints ;
typedef TYPE_2__ AVHWDeviceContext ;
typedef TYPE_3__ AVD3D11VADeviceContext ;


 int AVERROR (int ) ;
 void* AV_PIX_FMT_D3D11 ;
 void* AV_PIX_FMT_NONE ;
 int D3D11_FORMAT_SUPPORT_TEXTURE2D ;
 int ENOMEM ;
 int FF_ARRAY_ELEMS (TYPE_4__*) ;
 int ID3D11Device_CheckFormatSupport (int ,int ,int*) ;
 scalar_t__ SUCCEEDED (int ) ;
 void* av_malloc_array (int,int) ;
 TYPE_4__* supported_formats ;

__attribute__((used)) static int d3d11va_frames_get_constraints(AVHWDeviceContext *ctx,
                                          const void *hwconfig,
                                          AVHWFramesConstraints *constraints)
{
    AVD3D11VADeviceContext *device_hwctx = ctx->hwctx;
    int nb_sw_formats = 0;
    HRESULT hr;
    int i;

    constraints->valid_sw_formats = av_malloc_array(FF_ARRAY_ELEMS(supported_formats) + 1,
                                                    sizeof(*constraints->valid_sw_formats));
    if (!constraints->valid_sw_formats)
        return AVERROR(ENOMEM);

    for (i = 0; i < FF_ARRAY_ELEMS(supported_formats); i++) {
        UINT format_support = 0;
        hr = ID3D11Device_CheckFormatSupport(device_hwctx->device, supported_formats[i].d3d_format, &format_support);
        if (SUCCEEDED(hr) && (format_support & D3D11_FORMAT_SUPPORT_TEXTURE2D))
            constraints->valid_sw_formats[nb_sw_formats++] = supported_formats[i].pix_fmt;
    }
    constraints->valid_sw_formats[nb_sw_formats] = AV_PIX_FMT_NONE;

    constraints->valid_hw_formats = av_malloc_array(2, sizeof(*constraints->valid_hw_formats));
    if (!constraints->valid_hw_formats)
        return AVERROR(ENOMEM);

    constraints->valid_hw_formats[0] = AV_PIX_FMT_D3D11;
    constraints->valid_hw_formats[1] = AV_PIX_FMT_NONE;

    return 0;
}
