
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int texture; } ;
struct gs_texture_2d {int height; int width; TYPE_1__ base; int unpack_buffer; } ;
struct TYPE_6__ {int gl_type; int gl_format; int gl_internal_format; } ;
typedef TYPE_2__ gs_texture_t ;


 int GL_PIXEL_UNPACK_BUFFER ;
 int GL_TEXTURE_2D ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int glTexImage2D (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int glUnmapBuffer (int ) ;
 int gl_bind_buffer (int ,int ) ;
 int gl_bind_texture (int ,int ) ;
 int gl_success (char*) ;
 int is_texture_2d (TYPE_2__*,char*) ;

void gs_texture_unmap(gs_texture_t *tex)
{
 struct gs_texture_2d *tex2d = (struct gs_texture_2d *)tex;
 if (!is_texture_2d(tex, "gs_texture_unmap"))
  goto failed;

 if (!gl_bind_buffer(GL_PIXEL_UNPACK_BUFFER, tex2d->unpack_buffer))
  goto failed;

 glUnmapBuffer(GL_PIXEL_UNPACK_BUFFER);
 if (!gl_success("glUnmapBuffer"))
  goto failed;

 if (!gl_bind_texture(GL_TEXTURE_2D, tex2d->base.texture))
  goto failed;

 glTexImage2D(GL_TEXTURE_2D, 0, tex->gl_internal_format, tex2d->width,
       tex2d->height, 0, tex->gl_format, tex->gl_type, 0);
 if (!gl_success("glTexImage2D"))
  goto failed;

 gl_bind_buffer(GL_PIXEL_UNPACK_BUFFER, 0);
 gl_bind_texture(GL_TEXTURE_2D, 0);
 return;

failed:
 gl_bind_buffer(GL_PIXEL_UNPACK_BUFFER, 0);
 gl_bind_texture(GL_TEXTURE_2D, 0);
 blog(LOG_ERROR, "gs_texture_unmap (GL) failed");
}
