
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lo; int hi; int x; } ;
typedef TYPE_1__ pdf_vmtx ;
struct TYPE_9__ {int w; } ;
typedef TYPE_2__ pdf_hmtx ;
struct TYPE_10__ {int vmtx_len; TYPE_1__ dvmtx; TYPE_1__* vmtx; } ;
typedef TYPE_3__ pdf_font_desc ;
typedef int fz_context ;


 TYPE_2__ pdf_lookup_hmtx (int *,TYPE_3__*,int) ;

pdf_vmtx
pdf_lookup_vmtx(fz_context *ctx, pdf_font_desc *font, int cid)
{
 pdf_hmtx h;
 pdf_vmtx v;
 int l = 0;
 int r = font->vmtx_len - 1;
 int m;

 if (!font->vmtx)
  goto notfound;

 while (l <= r)
 {
  m = (l + r) >> 1;
  if (cid < font->vmtx[m].lo)
   r = m - 1;
  else if (cid > font->vmtx[m].hi)
   l = m + 1;
  else
   return font->vmtx[m];
 }

notfound:
 h = pdf_lookup_hmtx(ctx, font, cid);
 v = font->dvmtx;
 v.x = h.w / 2;
 return v;
}
