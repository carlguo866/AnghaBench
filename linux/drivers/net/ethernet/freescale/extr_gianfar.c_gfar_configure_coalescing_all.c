
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfar_private {int dummy; } ;


 int gfar_configure_coalescing (struct gfar_private*,int,int) ;

__attribute__((used)) static void gfar_configure_coalescing_all(struct gfar_private *priv)
{
 gfar_configure_coalescing(priv, 0xFF, 0xFF);
}
