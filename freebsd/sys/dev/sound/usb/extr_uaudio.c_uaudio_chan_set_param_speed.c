
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ uint32_t ;
struct uaudio_softc {int sc_udev; } ;
struct uaudio_chan {size_t num_alt; size_t set_alt; TYPE_1__* usb_alt; struct uaudio_softc* priv_sc; } ;
struct TYPE_2__ {scalar_t__ sample_rate; } ;


 int DPRINTF (char*,int) ;
 int usb_proc_explore_lock (int ) ;
 int usb_proc_explore_unlock (int ) ;

int
uaudio_chan_set_param_speed(struct uaudio_chan *ch, uint32_t speed)
{
 struct uaudio_softc *sc;
 uint8_t x;

 sc = ch->priv_sc;

 for (x = 0; x < ch->num_alt; x++) {
  if (ch->usb_alt[x].sample_rate < speed) {

   break;
  }
 }

 if (x != 0)
  x--;

 usb_proc_explore_lock(sc->sc_udev);
 ch->set_alt = x;
 usb_proc_explore_unlock(sc->sc_udev);

 DPRINTF("Selecting alt %d\n", (int)x);

 return (ch->usb_alt[x].sample_rate);
}
