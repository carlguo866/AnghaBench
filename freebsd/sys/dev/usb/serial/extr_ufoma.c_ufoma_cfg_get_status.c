
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ufoma_softc {int sc_msr; int sc_lsr; } ;
struct ucom_softc {struct ufoma_softc* sc_parent; } ;



__attribute__((used)) static void
ufoma_cfg_get_status(struct ucom_softc *ucom, uint8_t *lsr, uint8_t *msr)
{
 struct ufoma_softc *sc = ucom->sc_parent;


 *lsr = sc->sc_lsr;
 *msr = sc->sc_msr;
}
