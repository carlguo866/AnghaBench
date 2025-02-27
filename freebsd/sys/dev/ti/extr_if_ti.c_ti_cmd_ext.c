
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_softc {int ti_cmd_saved_prodidx; } ;
struct ti_cmd_desc {int dummy; } ;
typedef int * caddr_t ;


 int CSR_WRITE_4 (struct ti_softc*,scalar_t__,int) ;
 int TI_CMD_RING_CNT ;
 scalar_t__ TI_GCR_CMDRING ;
 int TI_INC (int,int ) ;
 scalar_t__ TI_MB_CMDPROD_IDX ;

__attribute__((used)) static void
ti_cmd_ext(struct ti_softc *sc, struct ti_cmd_desc *cmd, caddr_t arg, int len)
{
 int index;
 int i;

 index = sc->ti_cmd_saved_prodidx;
 CSR_WRITE_4(sc, TI_GCR_CMDRING + (index * 4), *(uint32_t *)(cmd));
 TI_INC(index, TI_CMD_RING_CNT);
 for (i = 0; i < len; i++) {
  CSR_WRITE_4(sc, TI_GCR_CMDRING + (index * 4),
      *(uint32_t *)(&arg[i * 4]));
  TI_INC(index, TI_CMD_RING_CNT);
 }
 CSR_WRITE_4(sc, TI_MB_CMDPROD_IDX, index);
 sc->ti_cmd_saved_prodidx = index;
}
