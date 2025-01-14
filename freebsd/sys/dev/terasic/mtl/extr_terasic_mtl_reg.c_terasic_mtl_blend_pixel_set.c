
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct terasic_mtl_softc {int dummy; } ;


 int TERASIC_MTL_BLEND_PIXEL_MASK ;
 int TERASIC_MTL_BLEND_PIXEL_SHIFT ;
 int TERASIC_MTL_LOCK (struct terasic_mtl_softc*) ;
 int TERASIC_MTL_UNLOCK (struct terasic_mtl_softc*) ;
 int terasic_mtl_reg_blend_get (struct terasic_mtl_softc*,int*) ;
 int terasic_mtl_reg_blend_set (struct terasic_mtl_softc*,int) ;

void
terasic_mtl_blend_pixel_set(struct terasic_mtl_softc *sc, uint8_t alpha)
{
 uint32_t v;

 TERASIC_MTL_LOCK(sc);
 terasic_mtl_reg_blend_get(sc, &v);
 v &= ~TERASIC_MTL_BLEND_PIXEL_MASK;
 v |= alpha << TERASIC_MTL_BLEND_PIXEL_SHIFT;
 terasic_mtl_reg_blend_set(sc, v);
 TERASIC_MTL_UNLOCK(sc);
}
