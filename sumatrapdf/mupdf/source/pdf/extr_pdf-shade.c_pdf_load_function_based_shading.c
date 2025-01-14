
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_function ;
typedef int pdf_document ;
struct TYPE_5__ {int xdivs; int ydivs; float* fn_vals; float** domain; int matrix; } ;
struct TYPE_6__ {TYPE_1__ f; } ;
struct TYPE_7__ {TYPE_2__ u; int colorspace; } ;
typedef TYPE_3__ fz_shade ;
typedef int fz_context ;


 int Domain ;
 int FUNSEGS ;
 int Matrix ;
 int PDF_NAME (int ) ;
 int fz_colorspace_n (int *,int ) ;
 float* fz_malloc (int *,int) ;
 float pdf_array_get_real (int *,int *,int) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_matrix (int *,int *,int ) ;
 int pdf_eval_function (int *,int *,float*,int,float*,int) ;

__attribute__((used)) static void
pdf_load_function_based_shading(fz_context *ctx, pdf_document *doc, fz_shade *shade, pdf_obj *dict, pdf_function *func)
{
 pdf_obj *obj;
 float x0, y0, x1, y1;
 float fv[2];
 int xx, yy;
 float *p;
 int n = fz_colorspace_n(ctx, shade->colorspace);

 x0 = y0 = 0;
 x1 = y1 = 1;
 obj = pdf_dict_get(ctx, dict, PDF_NAME(Domain));
 if (obj)
 {
  x0 = pdf_array_get_real(ctx, obj, 0);
  x1 = pdf_array_get_real(ctx, obj, 1);
  y0 = pdf_array_get_real(ctx, obj, 2);
  y1 = pdf_array_get_real(ctx, obj, 3);
 }

 shade->u.f.matrix = pdf_dict_get_matrix(ctx, dict, PDF_NAME(Matrix));
 shade->u.f.xdivs = FUNSEGS;
 shade->u.f.ydivs = FUNSEGS;
 shade->u.f.fn_vals = fz_malloc(ctx, (FUNSEGS+1)*(FUNSEGS+1)*n*sizeof(float));
 shade->u.f.domain[0][0] = x0;
 shade->u.f.domain[0][1] = y0;
 shade->u.f.domain[1][0] = x1;
 shade->u.f.domain[1][1] = y1;

 p = shade->u.f.fn_vals;
 for (yy = 0; yy <= FUNSEGS; yy++)
 {
  fv[1] = y0 + (y1 - y0) * yy / FUNSEGS;

  for (xx = 0; xx <= FUNSEGS; xx++)
  {
   fv[0] = x0 + (x1 - x0) * xx / FUNSEGS;

   pdf_eval_function(ctx, func, fv, 2, p, n);
   p += n;
  }
 }
}
