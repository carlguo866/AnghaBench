
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* uri; struct TYPE_5__* title; struct TYPE_5__* down; struct TYPE_5__* next; int refs; } ;
typedef TYPE_1__ fz_outline ;
typedef int fz_context ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_outline(fz_context *ctx, fz_outline *outline)
{
 while (fz_drop_imp(ctx, outline, &outline->refs))
 {
  fz_outline *next = outline->next;
  fz_drop_outline(ctx, outline->down);
  fz_free(ctx, outline->title);
  fz_free(ctx, outline->uri);
  fz_free(ctx, outline);
  outline = next;
 }
}
