
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uftdi_softc {int * sc_xfer; } ;
struct ucom_softc {struct uftdi_softc* sc_parent; } ;


 size_t UFTDI_BULK_DT_WR ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
uftdi_stop_write(struct ucom_softc *ucom)
{
 struct uftdi_softc *sc = ucom->sc_parent;

 usbd_transfer_stop(sc->sc_xfer[UFTDI_BULK_DT_WR]);
}
