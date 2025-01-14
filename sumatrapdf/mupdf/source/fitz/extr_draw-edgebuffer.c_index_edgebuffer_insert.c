
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_rasterizer ;
struct TYPE_6__ {int y1; int y0; } ;
struct TYPE_5__ {float x0; float x1; float y0; float y1; } ;
struct TYPE_7__ {TYPE_2__ clip; TYPE_1__ bbox; } ;
struct TYPE_8__ {int n; int * index; TYPE_3__ super; } ;
typedef TYPE_4__ fz_edgebuffer ;
typedef int fz_context ;


 scalar_t__ debugging_scan_converter ;
 int fprintf (int ,char*,int,int,int) ;
 int stderr ;

__attribute__((used)) static void index_edgebuffer_insert(fz_context *ctx, fz_rasterizer *ras, float fsx, float fsy, float fex, float fey, int rev)
{
 fz_edgebuffer *eb = (fz_edgebuffer *)ras;
 int iminy, imaxy;
 int height = eb->super.clip.y1 - eb->super.clip.y0;

 if (fsy == fey)
  return;

 if (fsx < fex)
 {
  if (fsx < eb->super.bbox.x0) eb->super.bbox.x0 = fsx;
  if (fex > eb->super.bbox.x1) eb->super.bbox.x1 = fex;
 }
 else
 {
  if (fsx > eb->super.bbox.x1) eb->super.bbox.x1 = fsx;
  if (fex < eb->super.bbox.x0) eb->super.bbox.x0 = fex;
 }
 if (fsy < fey)
 {
  if (fsy < eb->super.bbox.y0) eb->super.bbox.y0 = fsy;
  if (fey > eb->super.bbox.y1) eb->super.bbox.y1 = fey;
 }
 else
 {
  if (fey < eb->super.bbox.y0) eb->super.bbox.y0 = fey;
  if (fsy > eb->super.bbox.y1) eb->super.bbox.y1 = fsy;
 }







 iminy = (int)fsy;
 imaxy = (int)fey;

 if (iminy > imaxy)
 {
  int t;
  t = iminy; iminy = imaxy; imaxy = t;
 }
 imaxy++;
 iminy--;

 imaxy -= eb->super.clip.y0;
 if (imaxy < 0)
  return;
 iminy -= eb->super.clip.y0;
 if (iminy < 0)
  iminy = 0;
 else if (iminy > height)
  return;
 if (imaxy > height-1)
  imaxy = height-1;




 eb->index[iminy] += eb->n;
 eb->index[imaxy+1] -= eb->n;
}
