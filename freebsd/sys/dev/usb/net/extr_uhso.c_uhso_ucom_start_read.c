
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uhso_softc {int ** sc_xfer; TYPE_2__* sc_tty; int sc_type; } ;
struct ucom_softc {size_t sc_subunit; TYPE_1__* sc_super; struct uhso_softc* sc_parent; } ;
struct TYPE_4__ {int ht_open; } ;
struct TYPE_3__ {int sc_unit; } ;


 size_t UHSO_BULK_ENDPT_INTR ;
 size_t UHSO_BULK_ENDPT_READ ;
 int UHSO_DPRINTF (int,char*,int ,size_t) ;
 int UHSO_IFACE_USB_TYPE (int ) ;
 int UHSO_IF_BULK ;
 int UHSO_IF_MUX ;
 size_t UHSO_MUX_ENDPT_INTR ;
 int usbd_transfer_start (int *) ;

__attribute__((used)) static void
uhso_ucom_start_read(struct ucom_softc *ucom)
{
 struct uhso_softc *sc = ucom->sc_parent;

 UHSO_DPRINTF(3, "unit=%d, subunit=%d\n",
     ucom->sc_super->sc_unit, ucom->sc_subunit);

 if (UHSO_IFACE_USB_TYPE(sc->sc_type) & UHSO_IF_MUX) {
  sc->sc_tty[ucom->sc_subunit].ht_open = 1;
  usbd_transfer_start(sc->sc_xfer[UHSO_MUX_ENDPT_INTR]);
 }
 else if (UHSO_IFACE_USB_TYPE(sc->sc_type) & UHSO_IF_BULK) {
  sc->sc_tty[0].ht_open = 1;
  usbd_transfer_start(sc->sc_xfer[UHSO_BULK_ENDPT_READ]);
  if (sc->sc_xfer[UHSO_BULK_ENDPT_INTR] != ((void*)0))
   usbd_transfer_start(sc->sc_xfer[UHSO_BULK_ENDPT_INTR]);
 }
}
