
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwi_softc {int sc_led_blinking; int sc_led_blink_offdur; int sc_led_blink_ch; struct bwi_led* sc_blink_led; } ;
struct bwi_led {int l_flags; } ;


 int BWI_LED_F_SLOW ;
 int BWI_LED_SLOWDOWN (int) ;
 int BWI_MAC_GPIO_CTRL ;
 int CSR_READ_2 (struct bwi_softc*,int ) ;
 int CSR_WRITE_2 (struct bwi_softc*,int ,int ) ;
 int bwi_led_blink_next ;
 int bwi_led_onoff (struct bwi_led*,int ,int) ;
 int callout_reset (int *,int,int ,struct bwi_softc*) ;

__attribute__((used)) static void
bwi_led_blink_start(struct bwi_softc *sc, int on_dur, int off_dur)
{
 struct bwi_led *led = sc->sc_blink_led;
 uint16_t val;

 val = CSR_READ_2(sc, BWI_MAC_GPIO_CTRL);
 val = bwi_led_onoff(led, val, 1);
 CSR_WRITE_2(sc, BWI_MAC_GPIO_CTRL, val);

 if (led->l_flags & BWI_LED_F_SLOW) {
  BWI_LED_SLOWDOWN(on_dur);
  BWI_LED_SLOWDOWN(off_dur);
 }

 sc->sc_led_blinking = 1;
 sc->sc_led_blink_offdur = off_dur;

 callout_reset(&sc->sc_led_blink_ch, on_dur, bwi_led_blink_next, sc);
}
