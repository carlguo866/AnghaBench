
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ h; scalar_t__ y; scalar_t__ w; scalar_t__ x; } ;
typedef TYPE_1__ fz_pixmap ;
struct TYPE_6__ {scalar_t__ y1; scalar_t__ x1; scalar_t__ y0; scalar_t__ x0; } ;
typedef TYPE_2__ fz_irect ;
typedef int fz_context ;



fz_irect
fz_pixmap_bbox(fz_context *ctx, const fz_pixmap *pix)
{
 fz_irect bbox;
 bbox.x0 = pix->x;
 bbox.y0 = pix->y;
 bbox.x1 = pix->x + pix->w;
 bbox.y1 = pix->y + pix->h;
 return bbox;
}
