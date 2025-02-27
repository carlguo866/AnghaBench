
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpv_global {int dummy; } ;
struct TYPE_2__ {scalar_t__ space; int levels; } ;
struct mp_image_params {int imgfmt; int w; int h; int p_w; int p_h; int chroma_location; TYPE_1__ color; } ;
struct mp_sws_context {struct mp_log* log; struct mp_image_params params; } ;
struct mp_log {int dummy; } ;
struct mp_image {struct mp_log* log; struct mp_image_params params; } ;
typedef enum mp_csp_levels { ____Placeholder_mp_csp_levels } mp_csp_levels ;


 int MP_CHROMA_CENTER ;
 scalar_t__ MP_CSP_BT_601 ;
 scalar_t__ MP_CSP_RGB ;
 int mp_err (struct mp_log*,char*) ;
 struct mp_sws_context* mp_image_alloc (int,int,int) ;
 int mp_image_copy_attributes (struct mp_sws_context*,struct mp_sws_context*) ;
 struct mp_sws_context* mp_image_new_ref (struct mp_sws_context*) ;
 scalar_t__ mp_image_params_equal (struct mp_image_params*,struct mp_image_params*) ;
 int mp_image_params_get_dsize (struct mp_image_params*,int*,int*) ;
 int mp_image_params_guess_csp (struct mp_image_params*) ;
 struct mp_sws_context* mp_sws_alloc (int *) ;
 int mp_sws_enable_cmdline_opts (struct mp_sws_context*,struct mpv_global*) ;
 scalar_t__ mp_sws_scale (struct mp_sws_context*,struct mp_sws_context*,struct mp_sws_context*) ;
 int talloc_free (struct mp_sws_context*) ;

__attribute__((used)) static struct mp_image *convert_image(struct mp_image *image, int destfmt,
                                      enum mp_csp_levels yuv_levels,
                                      struct mpv_global *global,
                                      struct mp_log *log)
{
    int d_w, d_h;
    mp_image_params_get_dsize(&image->params, &d_w, &d_h);

    struct mp_image_params p = {
        .imgfmt = destfmt,
        .w = d_w,
        .h = d_h,
        .p_w = 1,
        .p_h = 1,
    };
    mp_image_params_guess_csp(&p);


    if (p.color.space != MP_CSP_RGB) {


        p.color.levels = yuv_levels;
        p.color.space = MP_CSP_BT_601;
        p.chroma_location = MP_CHROMA_CENTER;
        mp_image_params_guess_csp(&p);
    }

    if (mp_image_params_equal(&p, &image->params))
        return mp_image_new_ref(image);

    struct mp_image *dst = mp_image_alloc(p.imgfmt, p.w, p.h);
    if (!dst) {
        mp_err(log, "Out of memory.\n");
        return ((void*)0);
    }
    mp_image_copy_attributes(dst, image);

    dst->params = p;

    struct mp_sws_context *sws = mp_sws_alloc(((void*)0));
    sws->log = log;
    if (global)
        mp_sws_enable_cmdline_opts(sws, global);
    bool ok = mp_sws_scale(sws, dst, image) >= 0;
    talloc_free(sws);

    if (!ok) {
        mp_err(log, "Error when converting image.\n");
        talloc_free(dst);
        return ((void*)0);
    }

    return dst;
}
