
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int TexGenEnabled; int GenModeS; int GenModeT; int GenModeR; int GenModeQ; int EyePlaneQ; int ObjectPlaneQ; int EyePlaneR; int ObjectPlaneR; int EyePlaneT; int ObjectPlaneT; int EyePlaneS; int ObjectPlaneS; } ;
struct TYPE_6__ {TYPE_1__ Texture; } ;
typedef size_t GLint ;
typedef float GLfloat ;
typedef TYPE_2__ GLcontext ;


 int COPY_3V (float*,float*) ;
 double DOT3 (float*,float*) ;
 float DOT4 (float*,int ) ;



 float GL_SQRT (float) ;
 int NORMALIZE_3FV (float*) ;
 int Q_BIT ;
 int R_BIT ;
 int S_BIT ;
 int T_BIT ;
 int gl_problem (TYPE_2__*,char*) ;

void gl_texgen( GLcontext *ctx, GLint n,
                GLfloat obj[][4], GLfloat eye[][4],
                GLfloat normal[][3], GLfloat texcoord[][4] )
{

   if (ctx->Texture.TexGenEnabled==(S_BIT|T_BIT)
       && ctx->Texture.GenModeS==128
       && ctx->Texture.GenModeT==128) {
      GLint i;
      for (i=0;i<n;i++) {
         GLfloat u[3], two_nu, m, fx, fy, fz;
         COPY_3V( u, eye[i] );
         NORMALIZE_3FV( u );
         two_nu = 2.0F * DOT3(normal[i],u);
         fx = u[0] - normal[i][0] * two_nu;
         fy = u[1] - normal[i][1] * two_nu;
         fz = u[2] - normal[i][2] * two_nu;
         m = 2.0F * GL_SQRT( fx*fx + fy*fy + (fz+1.0F)*(fz+1.0F) );
         if (m==0.0F) {
            texcoord[i][0] = 0.5F;
            texcoord[i][1] = 0.5F;
         }
         else {
            GLfloat mInv = 1.0F / m;
            texcoord[i][0] = fx * mInv + 0.5F;
            texcoord[i][1] = fy * mInv + 0.5F;
         }
      }
      return;
   }


   if (ctx->Texture.TexGenEnabled & S_BIT) {
      GLint i;
      switch (ctx->Texture.GenModeS) {
         case 129:
            for (i=0;i<n;i++) {
               texcoord[i][0] = DOT4( obj[i], ctx->Texture.ObjectPlaneS );
            }
            break;
         case 130:
            for (i=0;i<n;i++) {
               texcoord[i][0] = DOT4( eye[i], ctx->Texture.EyePlaneS );
            }
            break;
         case 128:
            for (i=0;i<n;i++) {
               GLfloat u[3], two_nu, m, fx, fy, fz;
               COPY_3V( u, eye[i] );
               NORMALIZE_3FV( u );
               two_nu = 2.0*DOT3(normal[i],u);
               fx = u[0] - normal[i][0] * two_nu;
               fy = u[1] - normal[i][1] * two_nu;
               fz = u[2] - normal[i][2] * two_nu;
               m = 2.0F * GL_SQRT( fx*fx + fy*fy + (fz+1.0)*(fz+1.0) );
               if (m==0.0F) {
                  texcoord[i][0] = 0.5F;
               }
               else {
                  texcoord[i][0] = fx / m + 0.5F;
               }
            }
            break;
         default:
            gl_problem(ctx, "Bad S texgen");
            return;
      }
   }

   if (ctx->Texture.TexGenEnabled & T_BIT) {
      GLint i;
      switch (ctx->Texture.GenModeT) {
         case 129:
            for (i=0;i<n;i++) {
               texcoord[i][1] = DOT4( obj[i], ctx->Texture.ObjectPlaneT );
            }
            break;
         case 130:
            for (i=0;i<n;i++) {
               texcoord[i][1] = DOT4( eye[i], ctx->Texture.EyePlaneT );
            }
            break;
         case 128:
            for (i=0;i<n;i++) {
               GLfloat u[3], two_nu, m, fx, fy, fz;
               COPY_3V( u, eye[i] );
               NORMALIZE_3FV( u );
               two_nu = 2.0*DOT3(normal[i],u);
               fx = u[0] - normal[i][0] * two_nu;
               fy = u[1] - normal[i][1] * two_nu;
               fz = u[2] - normal[i][2] * two_nu;
               m = 2.0F * GL_SQRT( fx*fx + fy*fy + (fz+1.0)*(fz+1.0) );
               if (m==0.0F) {
                  texcoord[i][1] = 0.5F;
               }
               else {
                  texcoord[i][1] = fy / m + 0.5F;
               }
            }
            break;
         default:
            gl_problem(ctx, "Bad T texgen");
            return;
      }
   }

   if (ctx->Texture.TexGenEnabled & R_BIT) {
      GLint i;
      switch (ctx->Texture.GenModeR) {
         case 129:
            for (i=0;i<n;i++) {
               texcoord[i][2] = DOT4( obj[i], ctx->Texture.ObjectPlaneR );
            }
            break;
         case 130:
            for (i=0;i<n;i++) {
               texcoord[i][2] = DOT4( eye[i], ctx->Texture.EyePlaneR );
            }
            break;
         default:
            gl_problem(ctx, "Bad R texgen");
            return;
      }
   }

   if (ctx->Texture.TexGenEnabled & Q_BIT) {
      GLint i;
      switch (ctx->Texture.GenModeQ) {
         case 129:
            for (i=0;i<n;i++) {
               texcoord[i][3] = DOT4( obj[i], ctx->Texture.ObjectPlaneQ );
            }
            break;
         case 130:
            for (i=0;i<n;i++) {
               texcoord[i][3] = DOT4( eye[i], ctx->Texture.EyePlaneQ );
            }
            break;
         default:
            gl_problem(ctx, "Bad Q texgen");
            return;
      }
   }
}
