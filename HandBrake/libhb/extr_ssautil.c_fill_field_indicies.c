
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* underline_index; void* italic_index; void* bold_index; void* bg_color_index; void* ol_color_index; void* alt_color_index; void* fg_color_index; void* font_size_index; void* font_name_index; void* style_name_index; } ;
typedef TYPE_1__ ssa_style_indicies_t ;


 void* field_index (char**,char*) ;

__attribute__((used)) static void fill_field_indicies(char **fields, ssa_style_indicies_t * indices)
{
    indices->style_name_index = field_index(fields, "Name");
    indices->font_name_index = field_index(fields, "Fontname");
    indices->font_size_index = field_index(fields, "Fontsize");
    indices->fg_color_index = field_index(fields, "PrimaryColour");
    indices->alt_color_index = field_index(fields, "SecondaryColour");
    indices->ol_color_index = field_index(fields, "OutlineColour");
    indices->bg_color_index = field_index(fields, "BackColour");
    indices->bold_index = field_index(fields, "Bold");
    indices->italic_index = field_index(fields, "Italic");
    indices->underline_index = field_index(fields, "Underline");
}
