
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* priv; } ;
struct TYPE_8__ {int w; int h; TYPE_4__* dst; } ;
struct TYPE_7__ {int mode; float* interpolation; scalar_t__ interpolation_type; void* distortion_coords; scalar_t__ modifier; int reverse; int target_geometry; int scale; int focus_distance; int aperture; int focal_length; scalar_t__ lens; TYPE_1__* camera; } ;
struct TYPE_6__ {int CropFactor; } ;
typedef TYPE_2__ LensfunContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int ENOMEM ;
 int GEOMETRY_DISTORTION ;
 scalar_t__ LANCZOS ;
 int LANCZOS_RESOLUTION ;
 int LF_MODIFY_DISTORTION ;
 int LF_MODIFY_GEOMETRY ;
 int LF_MODIFY_SCALE ;
 int LF_MODIFY_TCA ;
 int LF_MODIFY_VIGNETTING ;
 int LF_PF_U8 ;
 int SUBPIXEL_DISTORTION ;
 int VIGNETTING ;
 void* av_malloc_array (int,int) ;
 float lanczos_kernel (float) ;
 int lf_modifier_apply_geometry_distortion (scalar_t__,int ,int ,int,int,void*) ;
 int lf_modifier_apply_subpixel_distortion (scalar_t__,int ,int ,int,int,void*) ;
 int lf_modifier_apply_subpixel_geometry_distortion (scalar_t__,int ,int ,int,int,void*) ;
 int lf_modifier_initialize (scalar_t__,scalar_t__,int ,int ,int ,int ,int ,int ,int,int ) ;
 scalar_t__ lf_modifier_new (scalar_t__,int ,int,int) ;
 float sqrtf (float) ;

__attribute__((used)) static int config_props(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    LensfunContext *lensfun = ctx->priv;
    int index;
    float a;
    int lensfun_mode = 0;

    if (!lensfun->modifier) {
        if (lensfun->camera && lensfun->lens) {
            lensfun->modifier = lf_modifier_new(lensfun->lens,
                                                lensfun->camera->CropFactor,
                                                inlink->w,
                                                inlink->h);
            if (lensfun->mode & VIGNETTING)
                lensfun_mode |= LF_MODIFY_VIGNETTING;
            if (lensfun->mode & GEOMETRY_DISTORTION)
                lensfun_mode |= LF_MODIFY_DISTORTION | LF_MODIFY_GEOMETRY | LF_MODIFY_SCALE;
            if (lensfun->mode & SUBPIXEL_DISTORTION)
                lensfun_mode |= LF_MODIFY_TCA;
            lf_modifier_initialize(lensfun->modifier,
                                   lensfun->lens,
                                   LF_PF_U8,
                                   lensfun->focal_length,
                                   lensfun->aperture,
                                   lensfun->focus_distance,
                                   lensfun->scale,
                                   lensfun->target_geometry,
                                   lensfun_mode,
                                   lensfun->reverse);
        } else {

            return AVERROR_BUG;
        }
    }

    if (!lensfun->distortion_coords) {
        if (lensfun->mode & SUBPIXEL_DISTORTION) {
            lensfun->distortion_coords = av_malloc_array(inlink->w * inlink->h, sizeof(float) * 2 * 3);
            if (!lensfun->distortion_coords)
                return AVERROR(ENOMEM);
            if (lensfun->mode & GEOMETRY_DISTORTION) {

                lf_modifier_apply_subpixel_geometry_distortion(lensfun->modifier,
                                                               0, 0,
                                                               inlink->w, inlink->h,
                                                               lensfun->distortion_coords);
            } else {

                lf_modifier_apply_subpixel_distortion(lensfun->modifier,
                                                      0, 0,
                                                      inlink->w, inlink->h,
                                                      lensfun->distortion_coords);
            }
        } else if (lensfun->mode & GEOMETRY_DISTORTION) {
            lensfun->distortion_coords = av_malloc_array(inlink->w * inlink->h, sizeof(float) * 2);
            if (!lensfun->distortion_coords)
                return AVERROR(ENOMEM);

            lf_modifier_apply_geometry_distortion(lensfun->modifier,
                                                  0, 0,
                                                  inlink->w, inlink->h,
                                                  lensfun->distortion_coords);
        }
    }

    if (!lensfun->interpolation)
        if (lensfun->interpolation_type == LANCZOS) {
            lensfun->interpolation = av_malloc_array(LANCZOS_RESOLUTION, sizeof(float) * 4);
            if (!lensfun->interpolation)
                return AVERROR(ENOMEM);
            for (index = 0; index < 4 * LANCZOS_RESOLUTION; ++index) {
                if (index == 0) {
                    lensfun->interpolation[index] = 1.0f;
                } else {
                    a = sqrtf((float)index / LANCZOS_RESOLUTION);
                    lensfun->interpolation[index] = lanczos_kernel(a);
                }
            }
        }

    return 0;
}
