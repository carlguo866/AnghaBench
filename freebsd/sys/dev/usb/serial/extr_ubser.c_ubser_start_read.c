
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {struct ubser_softc* sc_parent; } ;
struct ubser_softc {int * sc_xfer; } ;


 size_t UBSER_BULK_DT_RD ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
ubser_start_read(struct ucom_softc *ucom)
{
 struct ubser_softc *sc = ucom->sc_parent;

 usbd_transfer_start(sc->sc_xfer[UBSER_BULK_DT_RD]);
}
