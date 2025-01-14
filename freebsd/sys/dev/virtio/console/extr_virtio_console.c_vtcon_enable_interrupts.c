
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc_port {struct vtcon_port* vcsp_port; } ;
struct vtcon_softc {int vtcon_flags; int vtcon_max_ports; struct vtcon_softc_port* vtcon_ports; int vtcon_ctrl_rxvq; } ;
struct vtcon_port {int dummy; } ;


 int VTCON_FLAG_MULTIPORT ;
 int VTCON_LOCK (struct vtcon_softc*) ;
 int VTCON_PORT_LOCK (struct vtcon_port*) ;
 int VTCON_PORT_UNLOCK (struct vtcon_port*) ;
 int VTCON_UNLOCK (struct vtcon_softc*) ;
 int virtqueue_enable_intr (int ) ;
 int vtcon_port_enable_intr (struct vtcon_port*) ;

__attribute__((used)) static void
vtcon_enable_interrupts(struct vtcon_softc *sc)
{
 struct vtcon_softc_port *scport;
 struct vtcon_port *port;
 int i;

 VTCON_LOCK(sc);

 if (sc->vtcon_flags & VTCON_FLAG_MULTIPORT)
  virtqueue_enable_intr(sc->vtcon_ctrl_rxvq);

 for (i = 0; i < sc->vtcon_max_ports; i++) {
  scport = &sc->vtcon_ports[i];

  port = scport->vcsp_port;
  if (port == ((void*)0))
   continue;

  VTCON_PORT_LOCK(port);
  vtcon_port_enable_intr(port);
  VTCON_PORT_UNLOCK(port);
 }

 VTCON_UNLOCK(sc);
}
