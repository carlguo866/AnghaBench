
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int force; } ;
struct TYPE_9__ {TYPE_1__ obj; } ;
typedef TYPE_2__ vout_display_t ;
typedef int vout_display_cfg_t ;
typedef int vlc_video_context ;
struct TYPE_10__ {scalar_t__ i_chroma; scalar_t__ projection_mode; scalar_t__ orientation; } ;
typedef TYPE_3__ video_format_t ;


 scalar_t__ ORIENT_NORMAL ;
 int OpenCommon (TYPE_2__*,int const*,TYPE_3__*) ;
 scalar_t__ PROJECTION_MODE_RECTANGULAR ;
 scalar_t__ VLC_CODEC_ANDROID_OPAQUE ;
 int VLC_EGENERIC ;

__attribute__((used)) static int OpenOpaque(vout_display_t *vd, const vout_display_cfg_t *cfg,
                      video_format_t *fmtp, vlc_video_context *context)
{
    if (fmtp->i_chroma != VLC_CODEC_ANDROID_OPAQUE)
        return VLC_EGENERIC;

    if (!vd->obj.force
        && (fmtp->projection_mode != PROJECTION_MODE_RECTANGULAR
            || fmtp->orientation != ORIENT_NORMAL))
    {

        return VLC_EGENERIC;
    }

    (void) context;
    return OpenCommon(vd, cfg, fmtp);
}
