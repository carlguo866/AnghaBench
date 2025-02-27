
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int fz_font ;
struct TYPE_13__ {TYPE_2__* font; } ;
typedef TYPE_3__ fz_context ;
struct TYPE_11__ {int is_serif; } ;
struct TYPE_14__ {TYPE_1__ flags; } ;
struct TYPE_12__ {TYPE_5__** base14; } ;


 int FZ_ERROR_GENERIC ;
 int find_base14_index (char const*) ;
 int * fz_keep_font (TYPE_3__*,TYPE_5__*) ;
 unsigned char* fz_lookup_base14_font (TYPE_3__*,char const*,int*) ;
 TYPE_5__* fz_new_font_from_memory (TYPE_3__*,char const*,unsigned char const*,int,int ,int) ;
 int fz_throw (TYPE_3__*,int ,char*,char const*) ;

fz_font *
fz_new_base14_font(fz_context *ctx, const char *name)
{
 const unsigned char *data;
 int size;
 int x = find_base14_index(name);
 if (x >= 0)
 {
  if (ctx->font->base14[x])
   return fz_keep_font(ctx, ctx->font->base14[x]);
  data = fz_lookup_base14_font(ctx, name, &size);
  if (data)
  {
   ctx->font->base14[x] = fz_new_font_from_memory(ctx, name, data, size, 0, 1);
   ctx->font->base14[x]->flags.is_serif = (name[0] == 'T');
   return fz_keep_font(ctx, ctx->font->base14[x]);
  }
 }
 fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find builtin font with name '%s'", name);
}
