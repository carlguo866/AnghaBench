
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct terasic_mtl_softc {int mtl_reg_res; } ;


 int TERASIC_MTL_OFF_TEXTCURSOR ;
 int TERASIC_MTL_TEXTCURSOR_COL_MASK ;
 int TERASIC_MTL_TEXTCURSOR_COL_SHIFT ;
 int TERASIC_MTL_TEXTCURSOR_ROW_MASK ;
 int bus_read_4 (int ,int ) ;
 int le32toh (int) ;

void
terasic_mtl_reg_textcursor_get(struct terasic_mtl_softc *sc, uint8_t *colp,
    uint8_t *rowp)
{
 uint32_t v;

 v = bus_read_4(sc->mtl_reg_res, TERASIC_MTL_OFF_TEXTCURSOR);
 v = le32toh(v);
 *colp = (v & TERASIC_MTL_TEXTCURSOR_COL_MASK) >>
     TERASIC_MTL_TEXTCURSOR_COL_SHIFT;
 *rowp = (v & TERASIC_MTL_TEXTCURSOR_ROW_MASK);
}
