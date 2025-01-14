
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ i_visible_width; scalar_t__ i_visible_height; scalar_t__ i_width; scalar_t__ i_height; int i_sar_num; int i_sar_den; int pose; int multiview_mode; int projection_mode; int color_range; int space; int transfer; int primaries; } ;
typedef TYPE_5__ video_format_t ;
struct aom_image {scalar_t__ d_w; scalar_t__ d_h; scalar_t__ range; scalar_t__ user_priv; int mc; int tc; int cp; } ;
struct TYPE_21__ {int b_progressive; int date; } ;
typedef TYPE_6__ picture_t ;
struct TYPE_17__ {scalar_t__ primaries; int pose; int multiview_mode; int projection_mode; } ;
struct TYPE_18__ {TYPE_2__ video; } ;
struct TYPE_16__ {TYPE_5__ video; } ;
struct TYPE_22__ {TYPE_8__* p_sys; TYPE_3__ fmt_in; TYPE_1__ fmt_out; } ;
typedef TYPE_7__ decoder_t ;
struct TYPE_23__ {TYPE_4__* frame_priv; } ;
typedef TYPE_8__ decoder_sys_t ;
struct TYPE_19__ {int pts; } ;


 scalar_t__ AOM_CR_FULL_RANGE ;
 scalar_t__ COLOR_PRIMARIES_UNDEF ;
 int COLOR_RANGE_FULL ;
 int COLOR_RANGE_LIMITED ;
 int CopyPicture (struct aom_image const*,TYPE_6__*) ;
 TYPE_6__* decoder_NewPicture (TYPE_7__*) ;
 int decoder_QueueVideo (TYPE_7__*,TYPE_6__*) ;
 scalar_t__ decoder_UpdateVideoFormat (TYPE_7__*) ;
 int iso_23001_8_cp_to_vlc_primaries (int ) ;
 int iso_23001_8_mc_to_vlc_coeffs (int ) ;
 int iso_23001_8_tc_to_vlc_xfer (int ) ;

__attribute__((used)) static void OutputFrame(decoder_t *dec, const struct aom_image *img)
{
    video_format_t *v = &dec->fmt_out.video;

    if (img->d_w != v->i_visible_width || img->d_h != v->i_visible_height)
    {
        v->i_visible_width = dec->fmt_out.video.i_width = img->d_w;
        v->i_visible_height = dec->fmt_out.video.i_height = img->d_h;
    }

    if( !dec->fmt_out.video.i_sar_num || !dec->fmt_out.video.i_sar_den )
    {
        dec->fmt_out.video.i_sar_num = 1;
        dec->fmt_out.video.i_sar_den = 1;
    }

    if(dec->fmt_in.video.primaries == COLOR_PRIMARIES_UNDEF)
    {
        v->primaries = iso_23001_8_cp_to_vlc_primaries(img->cp);
        v->transfer = iso_23001_8_tc_to_vlc_xfer(img->tc);
        v->space = iso_23001_8_mc_to_vlc_coeffs(img->mc);
        v->color_range = img->range == AOM_CR_FULL_RANGE ? COLOR_RANGE_FULL : COLOR_RANGE_LIMITED;
    }

    dec->fmt_out.video.projection_mode = dec->fmt_in.video.projection_mode;
    dec->fmt_out.video.multiview_mode = dec->fmt_in.video.multiview_mode;
    dec->fmt_out.video.pose = dec->fmt_in.video.pose;

    if (decoder_UpdateVideoFormat(dec) == 0)
    {
        picture_t *pic = decoder_NewPicture(dec);
        if (pic)
        {
            decoder_sys_t *p_sys = dec->p_sys;
            CopyPicture(img, pic);



            pic->b_progressive = 1;
            pic->date = p_sys->frame_priv[(uintptr_t)img->user_priv].pts;

            decoder_QueueVideo(dec, pic);
        }
    }
}
