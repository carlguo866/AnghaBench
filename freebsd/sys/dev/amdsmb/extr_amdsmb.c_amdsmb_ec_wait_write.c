
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdsmb_softc {int smbus; } ;


 int AMDSMB_ECINB (struct amdsmb_softc*,int ) ;
 int DELAY (int) ;
 int EC_SC ;
 int EC_SC_IBF ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
amdsmb_ec_wait_write(struct amdsmb_softc *sc)
{
 int timeout = 500;

 while (timeout-- && AMDSMB_ECINB(sc, EC_SC) & EC_SC_IBF)
  DELAY(1);
 if (timeout == 0) {
  device_printf(sc->smbus, "timeout waiting for IBF to clear\n");
  return (1);
 }
 return (0);
}
