
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_29__ {int dwRefreshRate; int dwMipMapCount; } ;
struct TYPE_28__ {int dwRefreshRate; int dwMipMapCount; int dwZBufferBitDepth; } ;
struct TYPE_27__ {int ddckCKDestOverlay; } ;
struct TYPE_26__ {int dwBackBufferCount; } ;
struct TYPE_25__ {int dwCaps; } ;
struct TYPE_24__ {int dwCaps; } ;
struct TYPE_21__ {int dwZBufferBitDepth; } ;
struct TYPE_22__ {TYPE_1__ u1; } ;
struct TYPE_23__ {TYPE_2__ ddpfPixelFormat; } ;
struct TYPE_17__ {int dwLinearSize; int lPitch; } ;
struct TYPE_20__ {int dwSize; int dwFlags; TYPE_10__ u1; TYPE_8__ u2; int ddckCKSrcBlt; int ddckCKSrcOverlay; int ddckCKDestBlt; int ddckCKDestOverlay; int lpSurface; int dwAlphaBitDepth; int dwBackBufferCount; TYPE_4__ ddsCaps; TYPE_2__ ddpfPixelFormat; int dwHeight; int dwWidth; } ;
struct TYPE_18__ {int dwLinearSize; int lPitch; } ;
struct TYPE_19__ {int dwFlags; TYPE_11__ u1; TYPE_9__ u2; int ddckCKSrcBlt; int ddckCKSrcOverlay; int ddckCKDestBlt; TYPE_7__ u3; int lpSurface; int dwAlphaBitDepth; TYPE_6__ u5; TYPE_5__ ddsCaps; TYPE_3__ u4; int dwHeight; int dwWidth; } ;
typedef TYPE_12__ DDSURFACEDESC2 ;
typedef TYPE_13__ DDSURFACEDESC ;


 int DDSCAPS_ZBUFFER ;
 int DDSD_ALPHABITDEPTH ;
 int DDSD_BACKBUFFERCOUNT ;
 int DDSD_CAPS ;
 int DDSD_CKDESTBLT ;
 int DDSD_CKDESTOVERLAY ;
 int DDSD_CKSRCBLT ;
 int DDSD_CKSRCOVERLAY ;
 int DDSD_FVF ;
 int DDSD_HEIGHT ;
 int DDSD_LINEARSIZE ;
 int DDSD_MIPMAPCOUNT ;
 int DDSD_PITCH ;
 int DDSD_PIXELFORMAT ;
 int DDSD_REFRESHRATE ;
 int DDSD_SRCVBHANDLE ;
 int DDSD_TEXTURESTAGE ;
 int DDSD_WIDTH ;
 int DDSD_ZBUFFERBITDEPTH ;
 int WARN (char*) ;
 int memset (TYPE_13__*,int ,int) ;

void DDSD2_to_DDSD(const DDSURFACEDESC2 *in, DDSURFACEDESC *out)
{
    memset(out, 0, sizeof(*out));
    out->dwSize = sizeof(*out);
    out->dwFlags = in->dwFlags;
    if (in->dwFlags & DDSD_WIDTH) out->dwWidth = in->dwWidth;
    if (in->dwFlags & DDSD_HEIGHT) out->dwHeight = in->dwHeight;
    if (in->dwFlags & DDSD_PIXELFORMAT)
    {
        out->ddpfPixelFormat = in->u4.ddpfPixelFormat;
        if ((in->dwFlags & DDSD_CAPS) && (in->ddsCaps.dwCaps & DDSCAPS_ZBUFFER))
        {


            out->dwFlags &= ~DDSD_PIXELFORMAT;
            out->dwFlags |= DDSD_ZBUFFERBITDEPTH;
            out->u2.dwZBufferBitDepth = in->u4.ddpfPixelFormat.u1.dwZBufferBitDepth;
        }
    }

    out->ddsCaps.dwCaps = in->ddsCaps.dwCaps;
    if (in->dwFlags & DDSD_PITCH) out->u1.lPitch = in->u1.lPitch;
    if (in->dwFlags & DDSD_BACKBUFFERCOUNT) out->dwBackBufferCount = in->u5.dwBackBufferCount;
    if (in->dwFlags & DDSD_ZBUFFERBITDEPTH) out->u2.dwZBufferBitDepth = in->u2.dwMipMapCount;
    if (in->dwFlags & DDSD_ALPHABITDEPTH) out->dwAlphaBitDepth = in->dwAlphaBitDepth;

    out->lpSurface = in->lpSurface;
    if (in->dwFlags & DDSD_CKDESTOVERLAY) out->ddckCKDestOverlay = in->u3.ddckCKDestOverlay;
    if (in->dwFlags & DDSD_CKDESTBLT) out->ddckCKDestBlt = in->ddckCKDestBlt;
    if (in->dwFlags & DDSD_CKSRCOVERLAY) out->ddckCKSrcOverlay = in->ddckCKSrcOverlay;
    if (in->dwFlags & DDSD_CKSRCBLT) out->ddckCKSrcBlt = in->ddckCKSrcBlt;
    if (in->dwFlags & DDSD_MIPMAPCOUNT) out->u2.dwMipMapCount = in->u2.dwMipMapCount;
    if (in->dwFlags & DDSD_REFRESHRATE) out->u2.dwRefreshRate = in->u2.dwRefreshRate;
    if (in->dwFlags & DDSD_LINEARSIZE) out->u1.dwLinearSize = in->u1.dwLinearSize;



    if (in->dwFlags & DDSD_TEXTURESTAGE) WARN("Does not exist in DDSURFACEDESC: DDSD_TEXTURESTAGE\n");
    if (in->dwFlags & DDSD_FVF) WARN("Does not exist in DDSURFACEDESC: DDSD_FVF\n");
    if (in->dwFlags & DDSD_SRCVBHANDLE) WARN("Does not exist in DDSURFACEDESC: DDSD_SRCVBHANDLE\n");
    out->dwFlags &= ~(DDSD_TEXTURESTAGE | DDSD_FVF | DDSD_SRCVBHANDLE);
}
