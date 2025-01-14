
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xps_document ;
struct TYPE_3__ {float a; float b; float c; float d; float e; float f; } ;
typedef TYPE_1__ fz_matrix ;
typedef int fz_context ;


 float fz_atof (char*) ;

__attribute__((used)) static fz_matrix
xps_parse_render_transform(fz_context *ctx, xps_document *doc, char *transform)
{
 fz_matrix matrix;
 float args[6];
 char *s = transform;
 int i;

 args[0] = 1; args[1] = 0;
 args[2] = 0; args[3] = 1;
 args[4] = 0; args[5] = 0;

 for (i = 0; i < 6 && *s; i++)
 {
  args[i] = fz_atof(s);
  while (*s && *s != ',')
   s++;
  if (*s == ',')
   s++;
 }

 matrix.a = args[0]; matrix.b = args[1];
 matrix.c = args[2]; matrix.d = args[3];
 matrix.e = args[4]; matrix.f = args[5];
 return matrix;
}
