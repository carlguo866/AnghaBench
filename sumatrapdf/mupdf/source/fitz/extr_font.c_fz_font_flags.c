
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_font_flags_t ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ fz_font ;



fz_font_flags_t *fz_font_flags(fz_font *font)
{
 return font ? &font->flags : ((void*)0);
}
