
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2560_softc {int sc_dev; } ;


 int DELAY (int) ;
 int RAL_READ (struct rt2560_softc*,int ) ;
 int RAL_WRITE (struct rt2560_softc*,int ,int) ;
 int RT2560_BBPCSR ;
 int RT2560_BBP_BUSY ;
 int device_printf (int ,char*) ;

__attribute__((used)) static uint8_t
rt2560_bbp_read(struct rt2560_softc *sc, uint8_t reg)
{
 uint32_t val;
 int ntries;

 for (ntries = 0; ntries < 100; ntries++) {
  if (!(RAL_READ(sc, RT2560_BBPCSR) & RT2560_BBP_BUSY))
   break;
  DELAY(1);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "could not read from BBP\n");
  return 0;
 }

 val = RT2560_BBP_BUSY | reg << 8;
 RAL_WRITE(sc, RT2560_BBPCSR, val);

 for (ntries = 0; ntries < 100; ntries++) {
  val = RAL_READ(sc, RT2560_BBPCSR);
  if (!(val & RT2560_BBP_BUSY))
   return val & 0xff;
  DELAY(1);
 }

 device_printf(sc->sc_dev, "could not read from BBP\n");
 return 0;
}
