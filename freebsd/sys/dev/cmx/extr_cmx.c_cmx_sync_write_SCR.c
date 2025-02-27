
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cmx_softc {int dummy; } ;


 int BSR_BULK_OUT_FULL ;
 int cmx_wait_BSR (struct cmx_softc*,int ,int ) ;
 int cmx_write_SCR (struct cmx_softc*,int ) ;

__attribute__((used)) static inline int
cmx_sync_write_SCR(struct cmx_softc *sc, uint8_t val)
{
 int rv = 0;

 if ((rv = cmx_wait_BSR(sc, BSR_BULK_OUT_FULL, 0)) != 0) {
  return rv;
 }

 cmx_write_SCR(sc, val);

 if ((rv = cmx_wait_BSR(sc, BSR_BULK_OUT_FULL, 0)) != 0) {
  return rv;
 }

 return 0;
}
