
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct bwi_softc {scalar_t__ sc_pci_subvid; int sc_mtx; int sc_led_blink_ch; int sc_led_idle; struct bwi_led* sc_blink_led; struct bwi_led* sc_leds; } ;
struct bwi_led {scalar_t__ l_act; int l_flags; int l_mask; } ;
struct TYPE_3__ {scalar_t__ vid; scalar_t__* led_act; } ;


 int BWI_DBG_ATTACH ;
 int BWI_DBG_LED ;
 scalar_t__ BWI_LED_ACT_BLINK ;
 scalar_t__ BWI_LED_ACT_BLINK_POLL ;
 scalar_t__ BWI_LED_ACT_BLINK_SLOW ;
 int BWI_LED_ACT_LOW ;
 int BWI_LED_ACT_MASK ;
 int BWI_LED_F_ACTLOW ;
 int BWI_LED_F_BLINK ;
 int BWI_LED_F_POLLABLE ;
 int BWI_LED_F_SLOW ;
 int BWI_LED_MAX ;
 int BWI_LED_SLOWDOWN (int ) ;
 int BWI_SPROM_GPIO01 ;
 int BWI_SPROM_GPIO23 ;
 int BWI_SPROM_GPIO_0 ;
 int BWI_SPROM_GPIO_1 ;
 int BWI_SPROM_GPIO_2 ;
 int BWI_SPROM_GPIO_3 ;
 int DPRINTF (struct bwi_softc*,int,char*,int,scalar_t__,int) ;
 void* __SHIFTOUT (int,int ) ;
 scalar_t__* bwi_default_led_act ;
 int bwi_read_sprom (struct bwi_softc*,int ) ;
 TYPE_1__* bwi_vendor_led_act ;
 int callout_init_mtx (int *,int *,int ) ;
 int nitems (TYPE_1__*) ;

__attribute__((used)) static void
bwi_led_attach(struct bwi_softc *sc)
{
 const uint8_t *led_act = ((void*)0);
 uint16_t gpio, val[BWI_LED_MAX];
 int i;

 for (i = 0; i < nitems(bwi_vendor_led_act); ++i) {
  if (sc->sc_pci_subvid == bwi_vendor_led_act[i].vid) {
   led_act = bwi_vendor_led_act[i].led_act;
   break;
  }
 }
 if (led_act == ((void*)0))
  led_act = bwi_default_led_act;

 gpio = bwi_read_sprom(sc, BWI_SPROM_GPIO01);
 val[0] = __SHIFTOUT(gpio, BWI_SPROM_GPIO_0);
 val[1] = __SHIFTOUT(gpio, BWI_SPROM_GPIO_1);

 gpio = bwi_read_sprom(sc, BWI_SPROM_GPIO23);
 val[2] = __SHIFTOUT(gpio, BWI_SPROM_GPIO_2);
 val[3] = __SHIFTOUT(gpio, BWI_SPROM_GPIO_3);

 for (i = 0; i < BWI_LED_MAX; ++i) {
  struct bwi_led *led = &sc->sc_leds[i];

  if (val[i] == 0xff) {
   led->l_act = led_act[i];
  } else {
   if (val[i] & BWI_LED_ACT_LOW)
    led->l_flags |= BWI_LED_F_ACTLOW;
   led->l_act = __SHIFTOUT(val[i], BWI_LED_ACT_MASK);
  }
  led->l_mask = (1 << i);

  if (led->l_act == BWI_LED_ACT_BLINK_SLOW ||
      led->l_act == BWI_LED_ACT_BLINK_POLL ||
      led->l_act == BWI_LED_ACT_BLINK) {
   led->l_flags |= BWI_LED_F_BLINK;
   if (led->l_act == BWI_LED_ACT_BLINK_POLL)
    led->l_flags |= BWI_LED_F_POLLABLE;
   else if (led->l_act == BWI_LED_ACT_BLINK_SLOW)
    led->l_flags |= BWI_LED_F_SLOW;

   if (sc->sc_blink_led == ((void*)0)) {
    sc->sc_blink_led = led;
    if (led->l_flags & BWI_LED_F_SLOW)
     BWI_LED_SLOWDOWN(sc->sc_led_idle);
   }
  }

  DPRINTF(sc, BWI_DBG_LED | BWI_DBG_ATTACH,
   "%dth led, act %d, lowact %d\n", i,
   led->l_act, led->l_flags & BWI_LED_F_ACTLOW);
 }
 callout_init_mtx(&sc->sc_led_blink_ch, &sc->sc_mtx, 0);
}
