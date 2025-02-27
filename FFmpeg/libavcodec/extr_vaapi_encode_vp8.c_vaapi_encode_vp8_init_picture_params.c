
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int frame_type; int show_frame; int refresh_last; int refresh_golden_frame; int refresh_alternate_frame; scalar_t__ loop_filter_type; scalar_t__ version; } ;
struct TYPE_16__ {TYPE_4__ bits; } ;
struct TYPE_12__ {int force_kf; int no_ref_gf; int no_ref_arf; int no_ref_last; } ;
struct TYPE_13__ {TYPE_1__ bits; } ;
struct TYPE_17__ {int clamp_qindex_high; scalar_t__ clamp_qindex_low; int sharpness_level; int * loop_filter_level; TYPE_5__ pic_flags; int ref_arf_frame; int ref_gf_frame; int ref_last_frame; TYPE_2__ ref_flags; int coded_buf; int reconstructed_frame; } ;
typedef TYPE_6__ VAEncPictureParameterBufferVP8 ;
struct TYPE_18__ {int loop_filter_sharpness; int loop_filter_level; } ;
typedef TYPE_7__ VAAPIEncodeVP8Context ;
struct TYPE_19__ {int type; int nb_refs; TYPE_3__** refs; int output_buffer; int recon_surface; TYPE_6__* codec_picture_params; } ;
typedef TYPE_8__ VAAPIEncodePicture ;
struct TYPE_20__ {TYPE_7__* priv_data; } ;
struct TYPE_14__ {int recon_surface; } ;
typedef TYPE_9__ AVCodecContext ;





 int VA_INVALID_SURFACE ;
 int av_assert0 (int) ;

__attribute__((used)) static int vaapi_encode_vp8_init_picture_params(AVCodecContext *avctx,
                                                VAAPIEncodePicture *pic)
{
    VAAPIEncodeVP8Context *priv = avctx->priv_data;
    VAEncPictureParameterBufferVP8 *vpic = pic->codec_picture_params;
    int i;

    vpic->reconstructed_frame = pic->recon_surface;

    vpic->coded_buf = pic->output_buffer;

    switch (pic->type) {
    case 129:
    case 130:
        av_assert0(pic->nb_refs == 0);
        vpic->ref_flags.bits.force_kf = 1;
        vpic->ref_last_frame =
        vpic->ref_gf_frame =
        vpic->ref_arf_frame =
            VA_INVALID_SURFACE;
        break;
    case 128:
        av_assert0(pic->nb_refs == 1);
        vpic->ref_flags.bits.no_ref_last = 0;
        vpic->ref_flags.bits.no_ref_gf = 1;
        vpic->ref_flags.bits.no_ref_arf = 1;
        vpic->ref_last_frame =
        vpic->ref_gf_frame =
        vpic->ref_arf_frame =
            pic->refs[0]->recon_surface;
        break;
    default:
        av_assert0(0 && "invalid picture type");
    }

    vpic->pic_flags.bits.frame_type = (pic->type != 129);
    vpic->pic_flags.bits.show_frame = 1;

    vpic->pic_flags.bits.refresh_last = 1;
    vpic->pic_flags.bits.refresh_golden_frame = 1;
    vpic->pic_flags.bits.refresh_alternate_frame = 1;

    vpic->pic_flags.bits.version = 0;
    vpic->pic_flags.bits.loop_filter_type = 0;
    for (i = 0; i < 4; i++)
        vpic->loop_filter_level[i] = priv->loop_filter_level;
    vpic->sharpness_level = priv->loop_filter_sharpness;

    vpic->clamp_qindex_low = 0;
    vpic->clamp_qindex_high = 127;

    return 0;
}
