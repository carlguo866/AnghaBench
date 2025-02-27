
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bwi_softc {int dummy; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;


 int BWI_MOBJ_CTRL ;
 int BWI_MOBJ_CTRL_VAL (int,int) ;
 int BWI_MOBJ_DATA ;
 int BWI_MOBJ_DATA_UNALIGN ;
 int CSR_WRITE_2 (struct bwi_softc*,int ,int) ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int) ;

void
bwi_memobj_write_4(struct bwi_mac *mac, uint16_t obj_id, uint16_t ofs0,
     uint32_t v)
{
 struct bwi_softc *sc = mac->mac_sc;
 int ofs;

 ofs = ofs0 / 4;
 if (ofs0 % 4 != 0) {
  CSR_WRITE_4(sc, BWI_MOBJ_CTRL, BWI_MOBJ_CTRL_VAL(obj_id, ofs));
  CSR_WRITE_2(sc, BWI_MOBJ_DATA_UNALIGN, v >> 16);

  CSR_WRITE_4(sc, BWI_MOBJ_CTRL,
       BWI_MOBJ_CTRL_VAL(obj_id, ofs + 1));
  CSR_WRITE_2(sc, BWI_MOBJ_DATA, v & 0xffff);
 } else {
  CSR_WRITE_4(sc, BWI_MOBJ_CTRL, BWI_MOBJ_CTRL_VAL(obj_id, ofs));
  CSR_WRITE_4(sc, BWI_MOBJ_DATA, v);
 }
}
