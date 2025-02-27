
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_stream ;
typedef int fz_pixmap_image ;
struct TYPE_9__ {int n; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_image ;
typedef int fz_context ;


 TYPE_1__* fz_alpha_from_gray (int *,TYPE_1__*) ;
 TYPE_1__* fz_convert_pixmap (int *,TYPE_1__*,int ,int *,int *,int ,int ) ;
 int fz_default_color_params ;
 int fz_device_gray (int *) ;
 int fz_drop_pixmap (int *,TYPE_1__*) ;
 TYPE_1__* fz_pixmap_image_tile (int *,int *) ;
 int fz_set_pixmap_image_tile (int *,int *,TYPE_1__*) ;
 int * pdf_load_jpx (int *,int *,int *,int) ;

__attribute__((used)) static fz_image *
pdf_load_jpx_imp(fz_context *ctx, pdf_document *doc, pdf_obj *rdb, pdf_obj *dict, fz_stream *cstm, int forcemask)
{
 fz_image *image = pdf_load_jpx(ctx, doc, dict, forcemask);

 if (forcemask)
 {
  fz_pixmap_image *cimg = (fz_pixmap_image *)image;
  fz_pixmap *mask_pixmap;
  fz_pixmap *tile = fz_pixmap_image_tile(ctx, cimg);

  if (tile->n != 1)
  {
   fz_pixmap *gray = fz_convert_pixmap(ctx, tile, fz_device_gray(ctx), ((void*)0), ((void*)0), fz_default_color_params, 0);
   fz_drop_pixmap(ctx, tile);
   tile = gray;
  }

  mask_pixmap = fz_alpha_from_gray(ctx, tile);
  fz_drop_pixmap(ctx, tile);
  fz_set_pixmap_image_tile(ctx, cimg, mask_pixmap);
 }

 return image;
}
