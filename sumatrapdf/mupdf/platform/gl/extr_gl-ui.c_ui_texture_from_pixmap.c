
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct texture {int w; int h; int s; int t; int y; int x; int id; } ;
struct TYPE_3__ {int w; int h; int n; int * samples; int y; int x; } ;
typedef TYPE_1__ fz_pixmap ;


 int GL_NEAREST ;
 int GL_RGB ;
 int GL_RGBA ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNSIGNED_BYTE ;
 int ctx ;
 int fz_warn (int ,char*,int,int,int) ;
 int glBindTexture (int ,int ) ;
 int glGenTextures (int,int *) ;
 int glPixelStorei (int ,int) ;
 int glTexImage2D (int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int glTexParameteri (int ,int ,int ) ;
 int glTexSubImage2D (int ,int ,int ,int ,int,int,int ,int ,int *) ;
 scalar_t__ has_ARB_texture_non_power_of_two ;
 int max_texture_size ;
 int next_power_of_two (int) ;

void ui_texture_from_pixmap(struct texture *tex, fz_pixmap *pix)
{
 if (!tex->id)
  glGenTextures(1, &tex->id);
 glBindTexture(GL_TEXTURE_2D, tex->id);
 glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
 glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);

 tex->x = pix->x;
 tex->y = pix->y;
 tex->w = pix->w;
 tex->h = pix->h;

 if (has_ARB_texture_non_power_of_two)
 {
  if (tex->w > max_texture_size || tex->h > max_texture_size)
   fz_warn(ctx, "texture size (%d x %d) exceeds implementation limit (%d)", tex->w, tex->h, max_texture_size);
  glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, tex->w, tex->h, 0, pix->n == 4 ? GL_RGBA : GL_RGB, GL_UNSIGNED_BYTE, pix->samples);
  tex->s = 1;
  tex->t = 1;
 }
 else
 {
  int w2 = next_power_of_two(tex->w);
  int h2 = next_power_of_two(tex->h);
  if (w2 > max_texture_size || h2 > max_texture_size)
   fz_warn(ctx, "texture size (%d x %d) exceeds implementation limit (%d)", w2, h2, max_texture_size);
  glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, w2, h2, 0, GL_RGBA, GL_UNSIGNED_BYTE, ((void*)0));
  glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0, tex->w, tex->h, pix->n == 4 ? GL_RGBA : GL_RGB, GL_UNSIGNED_BYTE, pix->samples);
  tex->s = (float) tex->w / w2;
  tex->t = (float) tex->h / h2;
 }
}
