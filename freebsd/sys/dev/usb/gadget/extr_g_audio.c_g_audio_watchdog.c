
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_audio_softc {int sc_throughput; } ;


 int g_audio_throughput ;
 int g_audio_watchdog_reset (struct g_audio_softc*) ;

__attribute__((used)) static void
g_audio_watchdog(void *arg)
{
 struct g_audio_softc *sc = arg;
 int i;

 i = sc->sc_throughput;

 sc->sc_throughput = 0;

 g_audio_throughput = i;

 g_audio_watchdog_reset(sc);
}
