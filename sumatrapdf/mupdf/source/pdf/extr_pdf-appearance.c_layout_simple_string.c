
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_layout_block ;
typedef int fz_font ;
typedef int fz_context ;


 int REPLACEMENT ;
 int fz_add_layout_char (int *,int *,float,float,char const*) ;
 int fz_add_layout_line (int *,int *,float,float,float,char const*) ;
 float fz_advance_glyph (int *,int *,int,int ) ;
 int fz_chartorune (int*,char const*) ;
 int fz_encode_character (int *,int *,int) ;
 int fz_windows_1252_from_unicode (int) ;

__attribute__((used)) static void
layout_simple_string(fz_context *ctx, fz_layout_block *out, fz_font *font, float size,
 float x, float y, const char *a, const char *b)
{
 float w;
 int n, c, g;
 fz_add_layout_line(ctx, out, x, y, size, a);
 while (a < b)
 {
  n = fz_chartorune(&c, a);
  c = fz_windows_1252_from_unicode(c);
  if (c < 0) c = REPLACEMENT;
  g = fz_encode_character(ctx, font, c);
  w = fz_advance_glyph(ctx, font, g, 0) * size;
  fz_add_layout_char(ctx, out, x, w, a);
  a += n;
  x += w;
 }
}
