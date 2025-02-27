
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwsig; struct uart_bas sc_bas; } ;


 int SER_DDTR ;
 int SER_DRTS ;
 int SER_DTR ;
 int SER_RTS ;
 int SIGCHG (int,int ,int,int) ;
 int atomic_cmpset_32 (int *,int ,int ) ;

__attribute__((used)) static int
sbbc_uart_bus_setsig(struct uart_softc *sc, int sig)
{
 struct uart_bas *bas;
 uint32_t new, old;

 bas = &sc->sc_bas;
 do {
  old = sc->sc_hwsig;
  new = old;
  if ((sig & SER_DDTR) != 0) {
   SIGCHG(sig & SER_DTR, new, SER_DTR, SER_DDTR);
  }
  if ((sig & SER_DRTS) != 0) {
   SIGCHG(sig & SER_RTS, new, SER_RTS, SER_DRTS);
  }
 } while (!atomic_cmpset_32(&sc->sc_hwsig, old, new));
 return (0);
}
