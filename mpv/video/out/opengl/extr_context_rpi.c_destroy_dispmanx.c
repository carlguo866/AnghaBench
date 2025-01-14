
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {scalar_t__ update; scalar_t__ display; scalar_t__ window; scalar_t__ egl_surface; int egl_display; } ;


 int EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_SURFACE ;
 int eglDestroySurface (int ,scalar_t__) ;
 int eglMakeCurrent (int ,scalar_t__,scalar_t__,int ) ;
 int vc_dispmanx_display_close (scalar_t__) ;
 int vc_dispmanx_element_remove (scalar_t__,scalar_t__) ;
 int vc_dispmanx_update_submit_sync (scalar_t__) ;

__attribute__((used)) static void destroy_dispmanx(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (p->egl_surface) {
        eglMakeCurrent(p->egl_display, EGL_NO_SURFACE, EGL_NO_SURFACE,
                       EGL_NO_CONTEXT);
        eglDestroySurface(p->egl_display, p->egl_surface);
        p->egl_surface = EGL_NO_SURFACE;
    }

    if (p->window)
        vc_dispmanx_element_remove(p->update, p->window);
    p->window = 0;
    if (p->display)
        vc_dispmanx_display_close(p->display);
    p->display = 0;
    if (p->update)
        vc_dispmanx_update_submit_sync(p->update);
    p->update = 0;
}
