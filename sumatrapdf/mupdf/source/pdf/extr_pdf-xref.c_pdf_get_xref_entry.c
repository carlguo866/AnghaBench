
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int start; int len; TYPE_2__* table; struct TYPE_8__* next; } ;
typedef TYPE_1__ pdf_xref_subsec ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_2__ pdf_xref_entry ;
struct TYPE_10__ {int num_objects; TYPE_1__* subsec; } ;
typedef TYPE_3__ pdf_xref ;
struct TYPE_11__ {int max_xref_len; int* xref_index; int xref_base; int num_xref_sections; TYPE_3__* xref_sections; } ;
typedef TYPE_4__ pdf_document ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int ensure_solid_xref (int *,TYPE_4__*,int,int ) ;
 int fz_throw (int *,int ,char*) ;

pdf_xref_entry *pdf_get_xref_entry(fz_context *ctx, pdf_document *doc, int i)
{
 pdf_xref *xref = ((void*)0);
 pdf_xref_subsec *sub;
 int j;

 if (i < 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Negative object number requested");

 if (i <= doc->max_xref_len)
  j = doc->xref_index[i];
 else
  j = 0;



 if (doc->xref_base > j)
  j = doc->xref_base;


 for (; j < doc->num_xref_sections; j++)
 {
  xref = &doc->xref_sections[j];

  if (i < xref->num_objects)
  {
   for (sub = xref->subsec; sub != ((void*)0); sub = sub->next)
   {
    pdf_xref_entry *entry;

    if (i < sub->start || i >= sub->start + sub->len)
     continue;

    entry = &sub->table[i - sub->start];
    if (entry->type)
    {


     if (doc->xref_base == 0)
      doc->xref_index[i] = j;
     return entry;
    }
   }
  }
 }



 doc->xref_index[i] = 0;
 if (xref == ((void*)0) || i < xref->num_objects)
 {
  xref = &doc->xref_sections[doc->xref_base];
  for (sub = xref->subsec; sub != ((void*)0); sub = sub->next)
  {
   if (i >= sub->start && i < sub->start + sub->len)
    return &sub->table[i - sub->start];
  }
 }





 ensure_solid_xref(ctx, doc, i+1, 0);
 xref = &doc->xref_sections[0];
 sub = xref->subsec;
 return &sub->table[i - sub->start];
}
