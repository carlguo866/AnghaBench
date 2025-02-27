
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int progressive_frame; int progressive_sequence; int f_code; int b_code; int slice_context_count; scalar_t__ picture_number; scalar_t__ coded_picture_number; int picture_structure; int chroma_qscale_table; int c_dc_scale_table; int y_dc_scale_table; } ;
typedef TYPE_1__ MpegEncContext ;


 int PICT_FRAME ;
 int ff_default_chroma_qscale_table ;
 int ff_mpeg1_dc_scale_table ;

void ff_mpv_common_defaults(MpegEncContext *s)
{
    s->y_dc_scale_table =
    s->c_dc_scale_table = ff_mpeg1_dc_scale_table;
    s->chroma_qscale_table = ff_default_chroma_qscale_table;
    s->progressive_frame = 1;
    s->progressive_sequence = 1;
    s->picture_structure = PICT_FRAME;

    s->coded_picture_number = 0;
    s->picture_number = 0;

    s->f_code = 1;
    s->b_code = 1;

    s->slice_context_count = 1;
}
