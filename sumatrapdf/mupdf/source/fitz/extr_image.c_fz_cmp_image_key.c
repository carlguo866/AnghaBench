
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;
struct TYPE_4__ {scalar_t__ image; scalar_t__ l2factor; TYPE_1__ rect; } ;
typedef TYPE_2__ fz_image_key ;
typedef int fz_context ;



__attribute__((used)) static int
fz_cmp_image_key(fz_context *ctx, void *k0_, void *k1_)
{
 fz_image_key *k0 = (fz_image_key *)k0_;
 fz_image_key *k1 = (fz_image_key *)k1_;
 return k0->image == k1->image && k0->l2factor == k1->l2factor && k0->rect.x0 == k1->rect.x0 && k0->rect.y0 == k1->rect.y0 && k0->rect.x1 == k1->rect.x1 && k0->rect.y1 == k1->rect.y1;
}
