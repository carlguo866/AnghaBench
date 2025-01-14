
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct wi_softc {int sc_bap_id; int sc_bap_off; } ;


 int CSR_READ_MULTI_STREAM_2 (struct wi_softc*,int ,int *,int) ;
 int WI_DATA0 ;
 int wi_seek_bap (struct wi_softc*,int,int) ;

__attribute__((used)) static int
wi_read_bap(struct wi_softc *sc, int id, int off, void *buf, int buflen)
{
 int error, cnt;

 if (buflen == 0)
  return 0;
 if (id != sc->sc_bap_id || off != sc->sc_bap_off) {
  if ((error = wi_seek_bap(sc, id, off)) != 0)
   return error;
 }
 cnt = (buflen + 1) / 2;
 CSR_READ_MULTI_STREAM_2(sc, WI_DATA0, (u_int16_t *)buf, cnt);
 sc->sc_bap_off += cnt * 2;
 return 0;
}
