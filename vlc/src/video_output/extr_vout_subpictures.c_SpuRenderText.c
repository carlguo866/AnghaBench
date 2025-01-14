
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_13__ {scalar_t__ i_chroma; scalar_t__ transfer; scalar_t__ primaries; scalar_t__ space; scalar_t__ color_range; } ;
struct TYPE_16__ {scalar_t__ p_text; TYPE_1__ fmt; } ;
typedef TYPE_4__ subpicture_region_t ;
struct TYPE_17__ {TYPE_6__* p; } ;
typedef TYPE_5__ spu_t ;
struct TYPE_18__ {int textlock; TYPE_7__* text; } ;
typedef TYPE_6__ spu_private_t ;
struct TYPE_14__ {int i_width; int i_visible_width; int i_height; int i_visible_height; } ;
struct TYPE_15__ {TYPE_2__ video; } ;
struct TYPE_19__ {int (* pf_render ) (TYPE_7__*,TYPE_4__*,TYPE_4__*,int const*) ;TYPE_3__ fmt_out; } ;
typedef TYPE_7__ filter_t ;


 scalar_t__ COLOR_PRIMARIES_SRGB ;
 scalar_t__ COLOR_PRIMARIES_UNDEF ;
 scalar_t__ COLOR_RANGE_FULL ;
 scalar_t__ COLOR_RANGE_UNDEF ;
 scalar_t__ COLOR_SPACE_SRGB ;
 scalar_t__ COLOR_SPACE_UNDEF ;
 scalar_t__ TRANSFER_FUNC_SRGB ;
 scalar_t__ TRANSFER_FUNC_UNDEF ;
 scalar_t__ VLC_CODEC_TEXT ;
 int assert (int) ;
 int stub1 (TYPE_7__*,TYPE_4__*,TYPE_4__*,int const*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void SpuRenderText(spu_t *spu,
                          subpicture_region_t *region,
                          int i_original_width,
                          int i_original_height,
                          const vlc_fourcc_t *chroma_list)
{
    spu_private_t *sys = spu->p;
    filter_t *text = sys->text;
    assert(region->fmt.i_chroma == VLC_CODEC_TEXT);

    vlc_mutex_lock(&sys->textlock);
    if(text)
    {

        if (region->fmt.transfer == TRANSFER_FUNC_UNDEF)
            region->fmt.transfer = TRANSFER_FUNC_SRGB;
        if (region->fmt.primaries == COLOR_PRIMARIES_UNDEF)
            region->fmt.primaries = COLOR_PRIMARIES_SRGB;
        if (region->fmt.space == COLOR_SPACE_UNDEF)
            region->fmt.space = COLOR_SPACE_SRGB;
        if (region->fmt.color_range == COLOR_RANGE_UNDEF)
            region->fmt.color_range = COLOR_RANGE_FULL;


        text->fmt_out.video.i_width =
        text->fmt_out.video.i_visible_width = i_original_width;

        text->fmt_out.video.i_height =
        text->fmt_out.video.i_visible_height = i_original_height;

        if ( region->p_text )
            text->pf_render(text, region, region, chroma_list);
    }
    vlc_mutex_unlock(&sys->textlock);
}
