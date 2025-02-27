
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ drm_fd; scalar_t__ x11_display; } ;
typedef TYPE_1__ VAAPIDevicePriv ;
struct TYPE_8__ {TYPE_1__* user_opaque; TYPE_2__* hwctx; } ;
struct TYPE_7__ {scalar_t__ display; } ;
typedef TYPE_2__ AVVAAPIDeviceContext ;
typedef TYPE_3__ AVHWDeviceContext ;


 int XCloseDisplay (scalar_t__) ;
 int av_freep (TYPE_1__**) ;
 int close (scalar_t__) ;
 int vaTerminate (scalar_t__) ;

__attribute__((used)) static void vaapi_device_free(AVHWDeviceContext *ctx)
{
    AVVAAPIDeviceContext *hwctx = ctx->hwctx;
    VAAPIDevicePriv *priv = ctx->user_opaque;

    if (hwctx->display)
        vaTerminate(hwctx->display);






    if (priv->drm_fd >= 0)
        close(priv->drm_fd);

    av_freep(&priv);
}
