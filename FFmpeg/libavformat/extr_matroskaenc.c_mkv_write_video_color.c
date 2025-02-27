
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ebml_master ;
struct TYPE_7__ {scalar_t__ color_trc; scalar_t__ color_space; scalar_t__ color_primaries; scalar_t__ color_range; scalar_t__ chroma_location; } ;
struct TYPE_6__ {int MaxCLL; int MaxFALL; } ;
struct TYPE_5__ {int min_luminance; int max_luminance; scalar_t__ has_luminance; int * white_point; int ** display_primaries; scalar_t__ has_primaries; } ;
typedef int AVStream ;
typedef TYPE_1__ AVMasteringDisplayMetadata ;
typedef int AVIOContext ;
typedef TYPE_2__ AVContentLightMetadata ;
typedef TYPE_3__ AVCodecParameters ;


 scalar_t__ AVCHROMA_LOC_TOP ;
 scalar_t__ AVCHROMA_LOC_UNSPECIFIED ;
 scalar_t__ AVCOL_PRI_NB ;
 scalar_t__ AVCOL_PRI_UNSPECIFIED ;
 scalar_t__ AVCOL_RANGE_NB ;
 scalar_t__ AVCOL_RANGE_UNSPECIFIED ;
 scalar_t__ AVCOL_SPC_NB ;
 scalar_t__ AVCOL_SPC_UNSPECIFIED ;
 scalar_t__ AVCOL_TRC_NB ;
 scalar_t__ AVCOL_TRC_UNSPECIFIED ;
 int AV_PKT_DATA_CONTENT_LIGHT_LEVEL ;
 int AV_PKT_DATA_MASTERING_DISPLAY_METADATA ;
 int MATROSKA_ID_VIDEOCOLOR ;
 int MATROSKA_ID_VIDEOCOLORCHROMASITINGHORZ ;
 int MATROSKA_ID_VIDEOCOLORCHROMASITINGVERT ;
 int MATROSKA_ID_VIDEOCOLORMASTERINGMETA ;
 int MATROSKA_ID_VIDEOCOLORMATRIXCOEFF ;
 int MATROSKA_ID_VIDEOCOLORMAXCLL ;
 int MATROSKA_ID_VIDEOCOLORMAXFALL ;
 int MATROSKA_ID_VIDEOCOLORPRIMARIES ;
 int MATROSKA_ID_VIDEOCOLORRANGE ;
 int MATROSKA_ID_VIDEOCOLORTRANSFERCHARACTERISTICS ;
 int MATROSKA_ID_VIDEOCOLOR_BX ;
 int MATROSKA_ID_VIDEOCOLOR_BY ;
 int MATROSKA_ID_VIDEOCOLOR_GX ;
 int MATROSKA_ID_VIDEOCOLOR_GY ;
 int MATROSKA_ID_VIDEOCOLOR_LUMINANCEMAX ;
 int MATROSKA_ID_VIDEOCOLOR_LUMINANCEMIN ;
 int MATROSKA_ID_VIDEOCOLOR_RX ;
 int MATROSKA_ID_VIDEOCOLOR_RY ;
 int MATROSKA_ID_VIDEOCOLOR_WHITEX ;
 int MATROSKA_ID_VIDEOCOLOR_WHITEY ;
 int av_free (int *) ;
 int av_q2d (int ) ;
 int * av_stream_get_side_data (int *,int ,int*) ;
 int avcodec_enum_to_chroma_pos (int*,int*,scalar_t__) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_open_dyn_buf (int **) ;
 int avio_write (int *,int *,int) ;
 int end_ebml_master (int *,int ) ;
 int put_ebml_float (int *,int ,int ) ;
 int put_ebml_uint (int *,int ,int) ;
 int start_ebml_master (int *,int ,int) ;

__attribute__((used)) static int mkv_write_video_color(AVIOContext *pb, AVCodecParameters *par, AVStream *st) {
    AVIOContext *dyn_cp;
    uint8_t *colorinfo_ptr;
    int side_data_size = 0;
    int ret, colorinfo_size;
    const uint8_t *side_data;

    ret = avio_open_dyn_buf(&dyn_cp);
    if (ret < 0)
        return ret;

    if (par->color_trc != AVCOL_TRC_UNSPECIFIED &&
        par->color_trc < AVCOL_TRC_NB) {
        put_ebml_uint(dyn_cp, MATROSKA_ID_VIDEOCOLORTRANSFERCHARACTERISTICS,
                      par->color_trc);
    }
    if (par->color_space != AVCOL_SPC_UNSPECIFIED &&
        par->color_space < AVCOL_SPC_NB) {
        put_ebml_uint(dyn_cp, MATROSKA_ID_VIDEOCOLORMATRIXCOEFF, par->color_space);
    }
    if (par->color_primaries != AVCOL_PRI_UNSPECIFIED &&
        par->color_primaries < AVCOL_PRI_NB) {
        put_ebml_uint(dyn_cp, MATROSKA_ID_VIDEOCOLORPRIMARIES, par->color_primaries);
    }
    if (par->color_range != AVCOL_RANGE_UNSPECIFIED &&
        par->color_range < AVCOL_RANGE_NB) {
        put_ebml_uint(dyn_cp, MATROSKA_ID_VIDEOCOLORRANGE, par->color_range);
    }
    if (par->chroma_location != AVCHROMA_LOC_UNSPECIFIED &&
        par->chroma_location <= AVCHROMA_LOC_TOP) {
        int xpos, ypos;

        avcodec_enum_to_chroma_pos(&xpos, &ypos, par->chroma_location);
        put_ebml_uint(dyn_cp, MATROSKA_ID_VIDEOCOLORCHROMASITINGHORZ, (xpos >> 7) + 1);
        put_ebml_uint(dyn_cp, MATROSKA_ID_VIDEOCOLORCHROMASITINGVERT, (ypos >> 7) + 1);
    }

    side_data = av_stream_get_side_data(st, AV_PKT_DATA_CONTENT_LIGHT_LEVEL,
                                        &side_data_size);
    if (side_data_size) {
        const AVContentLightMetadata *metadata =
            (const AVContentLightMetadata*)side_data;
        put_ebml_uint(dyn_cp, MATROSKA_ID_VIDEOCOLORMAXCLL, metadata->MaxCLL);
        put_ebml_uint(dyn_cp, MATROSKA_ID_VIDEOCOLORMAXFALL, metadata->MaxFALL);
    }

    side_data = av_stream_get_side_data(st, AV_PKT_DATA_MASTERING_DISPLAY_METADATA,
                                        &side_data_size);
    if (side_data_size == sizeof(AVMasteringDisplayMetadata)) {
        ebml_master meta_element = start_ebml_master(
            dyn_cp, MATROSKA_ID_VIDEOCOLORMASTERINGMETA, 0);
        const AVMasteringDisplayMetadata *metadata =
            (const AVMasteringDisplayMetadata*)side_data;
        if (metadata->has_primaries) {
            put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOCOLOR_RX,
                           av_q2d(metadata->display_primaries[0][0]));
            put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOCOLOR_RY,
                           av_q2d(metadata->display_primaries[0][1]));
            put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOCOLOR_GX,
                           av_q2d(metadata->display_primaries[1][0]));
            put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOCOLOR_GY,
                           av_q2d(metadata->display_primaries[1][1]));
            put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOCOLOR_BX,
                           av_q2d(metadata->display_primaries[2][0]));
            put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOCOLOR_BY,
                           av_q2d(metadata->display_primaries[2][1]));
            put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOCOLOR_WHITEX,
                           av_q2d(metadata->white_point[0]));
            put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOCOLOR_WHITEY,
                           av_q2d(metadata->white_point[1]));
        }
        if (metadata->has_luminance) {
            put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOCOLOR_LUMINANCEMAX,
                           av_q2d(metadata->max_luminance));
            put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOCOLOR_LUMINANCEMIN,
                           av_q2d(metadata->min_luminance));
        }
        end_ebml_master(dyn_cp, meta_element);
    }

    colorinfo_size = avio_close_dyn_buf(dyn_cp, &colorinfo_ptr);
    if (colorinfo_size) {
        ebml_master colorinfo = start_ebml_master(pb, MATROSKA_ID_VIDEOCOLOR, colorinfo_size);
        avio_write(pb, colorinfo_ptr, colorinfo_size);
        end_ebml_master(pb, colorinfo);
    }
    av_free(colorinfo_ptr);
    return 0;
}
