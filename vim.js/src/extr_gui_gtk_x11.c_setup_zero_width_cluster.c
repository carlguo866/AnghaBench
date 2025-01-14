
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_13__ {int x_offset; scalar_t__ y_offset; int width; } ;
struct TYPE_16__ {TYPE_2__ geometry; int glyph; } ;
struct TYPE_12__ {int font; } ;
struct TYPE_15__ {TYPE_1__ analysis; } ;
struct TYPE_14__ {scalar_t__ x; int width; scalar_t__ height; } ;
struct TYPE_11__ {int char_width; int char_height; } ;
typedef TYPE_3__ PangoRectangle ;
typedef TYPE_4__ PangoItem ;
typedef TYPE_5__ PangoGlyphInfo ;


 int MAX (int ,int) ;
 int PANGO_SCALE ;
 TYPE_10__ gui ;
 int p_linespace ;
 int pango_font_get_glyph_extents (int ,int ,TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static void
setup_zero_width_cluster(PangoItem *item, PangoGlyphInfo *glyph,
    int last_cellcount, int last_cluster_width,
    int last_glyph_rbearing)
{
    PangoRectangle ink_rect;
    PangoRectangle logical_rect;
    int width;

    width = last_cellcount * gui.char_width * PANGO_SCALE;
    glyph->geometry.x_offset = -width + MAX(0, width - last_cluster_width) / 2;
    glyph->geometry.width = 0;

    pango_font_get_glyph_extents(item->analysis.font,
     glyph->glyph,
     &ink_rect, &logical_rect);
    if (ink_rect.x < 0)
    {
 glyph->geometry.x_offset += last_glyph_rbearing;
 glyph->geometry.y_offset = logical_rect.height
  - (gui.char_height - p_linespace) * PANGO_SCALE;
    }
    else


 glyph->geometry.x_offset = -width + MAX(0, width - ink_rect.width) / 2;
}
