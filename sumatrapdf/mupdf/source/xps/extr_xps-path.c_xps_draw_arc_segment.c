
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xps_document ;
struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ fz_point ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_context ;


 int FZ_PI ;
 int cosf (float) ;
 int fz_lineto (int *,int *,int ,int ) ;
 TYPE_1__ fz_transform_point_xy (int ,int ,int ) ;
 int sinf (float) ;

__attribute__((used)) static void
xps_draw_arc_segment(fz_context *ctx, xps_document *doc, fz_path *path, fz_matrix mtx, float th0, float th1, int iscw)
{
 float t, d;
 fz_point p;

 while (th1 < th0)
  th1 += FZ_PI * 2;

 d = FZ_PI / 180;

 if (iscw)
 {
  for (t = th0 + d; t < th1 - d/2; t += d)
  {
   p = fz_transform_point_xy(cosf(t), sinf(t), mtx);
   fz_lineto(ctx, path, p.x, p.y);
  }
 }
 else
 {
  th0 += FZ_PI * 2;
  for (t = th0 - d; t > th1 + d/2; t -= d)
  {
   p = fz_transform_point_xy(cosf(t), sinf(t), mtx);
   fz_lineto(ctx, path, p.x, p.y);
  }
 }
}
