
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void stbi_uc ;
struct TYPE_3__ {int w; int h; int member_0; } ;
typedef TYPE_1__ stbi_gif ;
typedef void stbi__uint8 ;
typedef int stbi ;


 void* stbi_gif_load_next (int *,TYPE_1__*,int*,int) ;

__attribute__((used)) static stbi_uc *stbi_gif_load(stbi *s, int *x, int *y, int *comp, int req_comp)
{
   stbi__uint8 *u = 0;
   stbi_gif g={0};

   u = stbi_gif_load_next(s, &g, comp, req_comp);
   if (u == (void *) 1) u = 0;
   if (u) {
      *x = g.w;
      *y = g.h;
   }

   return u;
}
