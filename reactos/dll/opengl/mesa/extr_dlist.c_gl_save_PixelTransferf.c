
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* PixelTransferf ) (TYPE_3__*,int ,int ) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int f; int e; } ;
typedef TYPE_2__ Node ;
typedef int GLfloat ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_PIXEL_TRANSFER ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ,int ) ;

void gl_save_PixelTransferf( GLcontext *ctx, GLenum pname, GLfloat param )
{
   Node *n = alloc_instruction( ctx, OPCODE_PIXEL_TRANSFER, 2 );
   if (n) {
      n[1].e = pname;
      n[2].f = param;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.PixelTransferf)( ctx, pname, param );
   }
}
