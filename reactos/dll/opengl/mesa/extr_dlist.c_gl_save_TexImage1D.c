
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct gl_image {int RefCount; } ;
struct TYPE_8__ {int (* TexImage1D ) (TYPE_3__*,void*,void*,void*,scalar_t__,void*,void*,void*,struct gl_image*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {struct gl_image* data; void* e; void* i; } ;
typedef TYPE_2__ Node ;
typedef scalar_t__ GLsizei ;
typedef void* GLint ;
typedef void* GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_TEX_IMAGE1D ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*,void*,scalar_t__,void*,void*,void*,struct gl_image*) ;

void gl_save_TexImage1D( GLcontext *ctx, GLenum target,
                         GLint level, GLint components,
    GLsizei width, GLint border,
                         GLenum format, GLenum type,
    struct gl_image *teximage )
{
   Node *n = alloc_instruction( ctx, OPCODE_TEX_IMAGE1D, 8 );
   if (n) {
      n[1].e = target;
      n[2].i = level;
      n[3].i = components;
      n[4].i = (GLint) width;
      n[5].i = border;
      n[6].e = format;
      n[7].e = type;
      n[8].data = teximage;
      if (teximage) {

         teximage->RefCount = 1;
      }
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.TexImage1D)( ctx, target, level, components, width,
                        border, format, type, teximage );
   }
}
