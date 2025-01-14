
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm2835_clkman_softc {int sc_dev; } ;
typedef int device_t ;


 int BCM_PWM_CLKSRC ;
 int DELAY (int) ;
 int R_CMCLK (struct bcm2835_clkman_softc*,int) ;
 int W_CMCLK (struct bcm2835_clkman_softc*,int,int) ;
 int W_CMDIV (struct bcm2835_clkman_softc*,int,int) ;
 struct bcm2835_clkman_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

uint32_t
bcm2835_clkman_set_frequency(device_t dev, uint32_t unit, uint32_t hz)
{
 struct bcm2835_clkman_softc *sc;
 int i;
 uint32_t u;

 sc = device_get_softc(dev);

 if (unit != BCM_PWM_CLKSRC) {
  device_printf(sc->sc_dev,
      "Unsupported unit 0x%x", unit);
  return (0);
 }

 W_CMCLK(sc, unit, 6);
 for (i = 0; i < 10; i++) {
  u = R_CMCLK(sc, unit);
  if (!(u&0x80))
   break;
  DELAY(1000);
 }
 if (u & 0x80) {
  device_printf(sc->sc_dev,
      "Failed to stop clock for unit 0x%x", unit);
  return (0);
 }
 if (hz == 0)
  return (0);

 u = 500000000/hz;
 if (u < 4) {
  device_printf(sc->sc_dev,
      "Frequency too high for unit 0x%x (max: 125 MHz)",
      unit);
  return (0);
 }
 if (u > 0xfff) {
  device_printf(sc->sc_dev,
      "Frequency too low for unit 0x%x (min: 123 kHz)",
      unit);
  return (0);
 }
 hz = 500000000/u;
 W_CMDIV(sc, unit, u << 12);

 W_CMCLK(sc, unit, 0x16);
 for (i = 0; i < 10; i++) {
  u = R_CMCLK(sc, unit);
  if ((u&0x80))
   break;
  DELAY(1000);
 }
 if (!(u & 0x80)) {
  device_printf(sc->sc_dev,
      "Failed to start clock for unit 0x%x", unit);
  return (0);
 }
 return (hz);
}
