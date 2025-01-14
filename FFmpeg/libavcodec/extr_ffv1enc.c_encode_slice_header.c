
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int state ;
struct TYPE_13__ {TYPE_3__* f; } ;
struct TYPE_14__ {int slice_x; int num_h_slices; int width; int slice_y; int num_v_slices; int height; int slice_width; int slice_height; int plane_count; int context_model; int version; int slice_coding_mode; int slice_rct_by_coef; int slice_rct_ry_coef; TYPE_4__ picture; TYPE_1__* plane; int c; } ;
struct TYPE_11__ {int num; int den; } ;
struct TYPE_12__ {TYPE_2__ sample_aspect_ratio; int top_field_first; int interlaced_frame; } ;
struct TYPE_10__ {int quant_table_index; } ;
typedef int RangeCoder ;
typedef TYPE_5__ FFV1Context ;


 int CONTEXT_SIZE ;
 int av_assert0 (int) ;
 int ff_ffv1_clear_slice_state (TYPE_5__*,TYPE_5__*) ;
 int memset (int *,int,int) ;
 int put_rac (int *,int *,int) ;
 int put_symbol (int *,int *,int,int ) ;

__attribute__((used)) static void encode_slice_header(FFV1Context *f, FFV1Context *fs)
{
    RangeCoder *c = &fs->c;
    uint8_t state[CONTEXT_SIZE];
    int j;
    memset(state, 128, sizeof(state));

    put_symbol(c, state, (fs->slice_x +1)*f->num_h_slices / f->width , 0);
    put_symbol(c, state, (fs->slice_y +1)*f->num_v_slices / f->height , 0);
    put_symbol(c, state, (fs->slice_width +1)*f->num_h_slices / f->width -1, 0);
    put_symbol(c, state, (fs->slice_height+1)*f->num_v_slices / f->height-1, 0);
    for (j=0; j<f->plane_count; j++) {
        put_symbol(c, state, f->plane[j].quant_table_index, 0);
        av_assert0(f->plane[j].quant_table_index == f->context_model);
    }
    if (!f->picture.f->interlaced_frame)
        put_symbol(c, state, 3, 0);
    else
        put_symbol(c, state, 1 + !f->picture.f->top_field_first, 0);
    put_symbol(c, state, f->picture.f->sample_aspect_ratio.num, 0);
    put_symbol(c, state, f->picture.f->sample_aspect_ratio.den, 0);
    if (f->version > 3) {
        put_rac(c, state, fs->slice_coding_mode == 1);
        if (fs->slice_coding_mode == 1)
            ff_ffv1_clear_slice_state(f, fs);
        put_symbol(c, state, fs->slice_coding_mode, 0);
        if (fs->slice_coding_mode != 1) {
            put_symbol(c, state, fs->slice_rct_by_coef, 0);
            put_symbol(c, state, fs->slice_rct_ry_coef, 0);
        }
    }
}
