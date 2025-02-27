
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_softc {int sc_leaving; TYPE_2__* sc_class; int sc_hwmtx_s; int * sc_rres; int sc_rrid; int sc_rtype; int * sc_ires; int sc_irid; int sc_icookie; struct uart_softc* sc_rxbuf; struct uart_softc* sc_txbuf; TYPE_1__* sc_sysdev; } ;
typedef int device_t ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_4__ {int (* detach ) (struct uart_softc*) ;int * hwmtx; } ;


 int M_UART ;
 int SYS_RES_IRQ ;
 int UART_DETACH (struct uart_softc*) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 TYPE_3__* device_get_driver (int ) ;
 struct uart_softc* device_get_softc (int ) ;
 int device_set_softc (int ,int *) ;
 int free (struct uart_softc*,int ) ;
 int mtx_destroy (int *) ;
 int stub1 (struct uart_softc*) ;
 int uart_tty_detach (struct uart_softc*) ;

int
uart_bus_detach(device_t dev)
{
 struct uart_softc *sc;

 sc = device_get_softc(dev);

 sc->sc_leaving = 1;

 if (sc->sc_sysdev != ((void*)0))
  sc->sc_sysdev->hwmtx = ((void*)0);

 UART_DETACH(sc);

 if (sc->sc_sysdev != ((void*)0) && sc->sc_sysdev->detach != ((void*)0))
  (*sc->sc_sysdev->detach)(sc);
 else
  uart_tty_detach(sc);

 free(sc->sc_txbuf, M_UART);
 free(sc->sc_rxbuf, M_UART);

 if (sc->sc_ires != ((void*)0)) {
  bus_teardown_intr(dev, sc->sc_ires, sc->sc_icookie);
  bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irid,
      sc->sc_ires);
 }
 bus_release_resource(dev, sc->sc_rtype, sc->sc_rrid, sc->sc_rres);

 mtx_destroy(&sc->sc_hwmtx_s);

 if (sc->sc_class->size > device_get_driver(dev)->size) {
  device_set_softc(dev, ((void*)0));
  free(sc, M_UART);
 }

 return (0);
}
